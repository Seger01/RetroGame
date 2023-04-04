#include "Quad.h"
#include <stack>
Quad::Quad(Rectangle boundary) {
    this->boundary = boundary;
    size = 0;
    for (int i = 0; i < 4; i++) {
        n[i] = nullptr;
    }
    topLeftTree = NULL;
    topRightTree = NULL;
    botLeftTree = NULL;
    botRightTree = NULL;
}
Quad::~Quad() {
    delete topLeftTree;
    delete topRightTree;
    delete botLeftTree;
    delete botRightTree;
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
        if (curr->size < 4) {
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

void Quad::remove(CollidableObject * node) {
    std::stack<Quad*> stack;
    stack.push(this);

    while (!stack.empty()) {
        Quad* current = stack.top();
        stack.pop();

        // loop through quad nodes
        for (int i = 0; i < current->size; i++) {
            // check if node is found
            if (current->n[i] == node) {
                current->n[i] = nullptr;
                // shift nodes forward
                for (int j = i; j < current->size - 1; j++) {
                    current->n[j] = current->n[j + 1];
                }
                current->size--;
                // when empty and leaf delete this quad leaf;
                if (current->size == 0 && !current->divided) {
                    if (current != this) {
                        delete current;
                    }
                    return;
                }
                break;
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
    // Insert a node into the quadtree
    /*bool Quad::insert(CollidableObject* node)
    {

        if (node == NULL) {
            return false;
        }


        // Current quad cannot contain it
        if (!(boundary.contains(node))) {
            return false;
        }
        // if size = full;
        if (size < 4) {
            n[size] = node;
            size++;
            return true;
        }
        else {
            // divide into smaller squares
            if (!this->divided) {
                this->subdivide();
            }
            if (this->topRightTree->insert(node)) {
                return true;
            }
            else if (this->topLeftTree->insert(node)) {
                return true;
            }
            else if (this->botRightTree->insert(node)) {
                return true;
            }
            else if (this->botLeftTree->insert(node)) {
                return true;
            }
        }
        return false;
    }*/
/*void Quad::remove(CollidableObject* node) {
    Rectangle range(node->getPosX(), node->getPosY(), 5, 5);
    // loop through quad nodes
    for (int i = 0; i < size; i++) {
        // check if node is found
        if (n[i] == node) {
            n[i] = nullptr;
            // shift nodes forward
            for (int j = i; j < size - 1; j++) {
                n[j] = n[j + 1];
            }
            size--;
            // when empty and leaf delete this quad leaf;
            if ((size = 0 && !this->divided)) {
                delete this;
            }
            return;
        }
    }
    if (this->divided) {
        if (this->topRightTree->boundary.contains(node)) {
            this->topRightTree->remove(node);
        }
        else if (this->topLeftTree->boundary.contains(node)) {
            this->topLeftTree->remove(node);
        }
        else if (this->botRightTree->boundary.contains(node)) {
            this->botRightTree->remove(node);
        }
        else if (this->botLeftTree->boundary.contains(node)) {
            this->botLeftTree->remove(node);
        }
    }

}*/
/*
std::vector<CollidableObject*>* Quad::query(Rectangle range, std::vector<CollidableObject*>* found) {

    if (!this->boundary.intersects(range)) {
        return found;
    }
    else {
        for (auto p : this->n) {
            if (p != nullptr) {
                if (range.contains(p)) {
                    found->push_back(p);
                }
            }
        }
    }
    if (this->divided) {
        this->topRightTree->query(range, found);
        this->topLeftTree->query(range, found);
        this->botRightTree->query(range, found);
        this->botLeftTree->query(range, found);
    }
    return found;
}*/