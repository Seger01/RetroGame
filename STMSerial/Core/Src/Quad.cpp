#include "Quad.h"
#include <stack>
#include "tile.h"
Quad::Quad(Rectangle boundary) {
    this->boundary = boundary;
    size = 0;
    for (int i = 0; i < 6; i++) {
        n[i] = nullptr;
    }
    topLeftTree = NULL;
    topRightTree = NULL;
    botLeftTree = NULL;
    botRightTree = NULL;
}
Quad::~Quad() {
	if(topLeftTree != NULL){
		delete topLeftTree;
	}
	if(topRightTree != NULL){
		delete topRightTree;
	}
	if(botLeftTree != NULL){
		delete botLeftTree;
	}
	if(botRightTree != NULL){
		 delete botRightTree;
	}
}
void Quad::subdivide() {
    int x = boundary.getX();
    int y = boundary.getY();
    int w = boundary.getW();
    int h = boundary.getH();
    Rectangle ne(x + w / 2, y - h / 2, w / 2, h / 2);
    this->topRightTree = new Quad(ne);
    Rectangle nw(x - w / 2, y - h / 2, w / 2, h / 2);
    this->topLeftTree = new Quad(nw);
    Rectangle se(x + w / 2, y + h / 2, w / 2, h / 2);
    this->botRightTree = new Quad(se);
    Rectangle sw(x - w / 2, y + h / 2, w / 2, h / 2);
    this->botLeftTree = new Quad(sw);
    this->divided = true;

}

bool Quad::insert(CollidableObject* node) {
    if (node == nullptr) {
        return false;
    }

    // Create a stack to keep track of nodes to be processed
    std::stack<Quad*> stack;
    stack.push(this);

    while (!stack.empty()) {
        // Get the next node from the stack
        Quad* curr = stack.top();
        stack.pop();

        // Check if the current quad can contain the node
        if (!curr->boundary.contains(node)) {
            continue;
        }

        // If the current quad has room, insert the node
        if (curr->size < 6) {
            curr->n[curr->size] = node;
            curr->size++;
            return true;
        }

        // If the current quad is not divided, subdivide it
        if (!curr->divided) {
            curr->subdivide();
        }

        // Add the child nodes to the stack
        stack.push(curr->topRightTree);
        stack.push(curr->topLeftTree);
        stack.push(curr->botRightTree);
        stack.push(curr->botLeftTree);
    }

    // Node could not be inserted
    return false;
}
void Quad::removeTiles(){
    std::stack<Quad*> stack;
    stack.push(this);

    while (!stack.empty()) {
        Quad* current = stack.top();
        stack.pop();
        for (auto p : current->n) {
            if (p != nullptr ) {
            	if(dynamic_cast<Tile*>(p)){
            		p = nullptr;
            	}
            }
        }
        if (current->divided) {
            stack.push(current->topRightTree);
            stack.push(current->topLeftTree);
            stack.push(current->botRightTree);
            stack.push(current->botLeftTree);
        }
    }
}
std::vector<CollidableObject*>* Quad::query(Rectangle range, std::vector<CollidableObject*>* found) {
    std::stack<Quad*> stack;
    stack.push(this);

    while (!stack.empty()) {
        Quad* current = stack.top();
        stack.pop();

        if (!current->boundary.intersects(range)) {
            continue;
        }

        for (auto p : current->n) {
            if (p != nullptr && range.contains(p)) {
                found->push_back(p);
            }
        }

        if (current->divided) {
            stack.push(current->topRightTree);
            stack.push(current->topLeftTree);
            stack.push(current->botRightTree);
            stack.push(current->botLeftTree);
        }
    }

    return found;
}

void Quad::remove(CollidableObject* node) {
    std::stack<Quad*> stack;
    stack.push(this);

    while (!stack.empty()) {
        Quad* current = stack.top();
        stack.pop();

        // loop through quad nodes
        for (int i = 0; i < current->size; i++) {
            // check if node is found
            if (current->n[i] == node) {

                // shift nodes forward
                for (int j = i; j < current->size - 1; j++) {
                    current->n[j] = current->n[j + 1];
                }
                current->n[current->size - 1] = nullptr;
                current->size--;
                // when empty and leaf delete this quad leaf;
                /*
                if (current->size == 0 && !current->divided) {
                    if (current != this) {
                        delete current;
                        current = nullptr;
                    }
                    return;
                }*/
                //stack.clear();
                return;
            }
        }

        if (current->divided) {
            if (current->topRightTree->boundary.contains(node)) {
                stack.push(current->topRightTree);
            }
            if (current->topLeftTree->boundary.contains(node)) {
                stack.push(current->topLeftTree);
            }
            if (current->botRightTree->boundary.contains(node)) {
                stack.push(current->botRightTree);
            }
            if (current->botLeftTree->boundary.contains(node)) {
                stack.push(current->botLeftTree);
            }
        }


    }
}
