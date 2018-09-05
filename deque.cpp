#include <iostream>
#include <cstdlib>
#include "node2.h"
#include "deque.h"

namespace main_savitch_6B {

	template <typename T>
	class deque
	deque::deque() {
		Node* front;
		Node* rear;
		int Size;
	}

	template <typename T>
	deque::~deque() {
		rear = NULL;
		while (front != NULL)
		{
			Node* temp = front;
			front = front->next;
			free(temp);
		}
		Size = 0;
	}

	template <typename T>
	deque::deque(const deque<T>& dq) {
		Node* a = copying.head;
		Node* end = NULL;

		while (cur)
		{
			Node* n = new Node;
			n->data = cur->data;

			if (!head) {
				head = n;
				end = head;
			}
			else {
				end->next = n;
				end = n;
			}

			cur = cur->next;
		}
	}

	template <typename T>
	deque::operator = (const deque<T>& dq) {
		
	}

	template <typename T>
	deque::front() {
		if (empty()) {
			return -1;
		}
		return front
	}

	template <typename T>
	deque::front() const {
		if (empty()) {
			return -1;
		}
		return front->data;
	}

	template <typename T>
	deque::back() {
		if (empty()) {
			return -1;
		}
		return rear;
	}

	template <typename T>
	deque::back() const {
		if (empty()) {
			return -1;
		}
		return rear->data;
	}

	template <typename T>
	void deque::push_front(const T& entry) {

	}

	template <typename T>
	void deque::push_back(const T& entry) {

		Node* newNode = Node::getnode(entry);
		// If true then new element cannot be added
		// and it is an 'Overflow' condition
		if(newNode == NULL) {
			cout << "OverFlow\n";
		}
		else
		{
			// If deque is empty
			if (rear == NULL) {
				front = rear = newNode;
			}
			// Inserts node at the rear end
			else
			{
				newNode->prev = rear;
				rear->next = newNode;
				rear = newNode;
			}

			Size++;
		}
	}

	template <typename T>
	void deque::pop_front() {

		// If deque is empty then
		// 'Underflow' condition
		if(empty()) {
			cout << "UnderFlow\n";
		}
		// Deletes the node from the front end and makes
		// the adjustment in the links
		else{
			Node* temp = front;
			front = front->next;

			// If only one element was present
			if (front == NULL)
				rear = NULL;
			else
				front->prev = NULL;
			free(temp);

			// Decrements count of elements by 1
			Size--;
		}
	}

	template <typename T>
	void deque::pop_back() {
		assert(tail_ptr != NULL);
		if (back_bp == front_bp) {
			~deque();
		}
		else if (back_bp == *last_bp) {
		
			delete[] tail_ptr;

			--last_bp;

			tail_ptr = (*last_bp) + (Size1 - 1);

		}

		else {
			--tail_ptr;
		}
	}


	template <typename T>
	size_type deque::size() const {
		return Size;

	}

	template <typename T>
	bool deque::empty() const {
		return (front == NULL);
	}

	template <typename T>
	friend bool deque::operator == (const deque<U>& dq1, const deque<U>& dq2) {
		if (dq1.size() != dq2.size()) {
			return false;
		}
		else {
		
		}
	}

	template <typename U>
	friend bool deque::operator<< (std::ostream& out, const deque<U>& dq) {
		i
	}
	
}


