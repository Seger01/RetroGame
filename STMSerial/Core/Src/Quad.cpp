#include "Quad.h"
#include "main.h"
#include "cmsis_os.h"

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
Quad::~Quad(){
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
// Insert a node into the quadtree
bool Quad::insert(CollidableObject* node)
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
}
std::vector<CollidableObject*>* Quad::query(Rectangle range, std::vector<CollidableObject*> *found){
    
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
}
void Quad::remove(CollidableObject* node) {
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
            n[size - 1] = nullptr;
            size--;
            // when empty and leaf delete this quad leaf;
            if((size = 0 && !this->divided)){
            	delete this;
            }
            return;
        }
    }
    if (this->divided) {
        if (this->topRightTree->boundary.contains(node)) {
            this->topRightTree->remove(node);
        }else if (this->topLeftTree->boundary.contains(node)) {
            this->topLeftTree->remove(node);
        }else if (this->botRightTree->boundary.contains(node)) {
            this->botRightTree->remove(node);
        }else if (this->botLeftTree->boundary.contains(node)) {
            this->botLeftTree->remove(node);
        }
    }
    
}
