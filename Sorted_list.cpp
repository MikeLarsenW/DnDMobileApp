#include <iostream>
using namespace std;
//for print function of list



struct Node
{
	int data;
	Node *left, *right;
};

//a recursive function for converting a binary tree into a sorted linked list
//uses the root of the tree and the head pointer of list
void treeSorter(Node* root, Node** head_ref)
{
	// base case
	if (root == NULL)
		return;

	// recursive call for right side
	treeSorter(root->right, head_ref);

	// places the root in the linked list
	root->right = *head_ref;

	// change the pointer on the left 
	if (*head_ref != NULL)
		(*head_ref)->left = root;

	// changes head 
	*head_ref = root;

	//recursive call for the left side
	treeSorter(root->left, head_ref);
}

// creates nodes for the tree
Node* newNode(int data)
{
	Node* node = new Node;
	node->data = data;
	node->left = node->right = NULL;
	return node;
}

//  prints double linked list.
void printDouble(Node* head)
{
	printf("the linked list of the tree from lowest to highest\n");
	while (head)
	{
		printf("%d ", head->data);
		head = head->right;
	}
}


// makes a tree that we convert
int main()
{
	

	Node* root = newNode(10);
	root->left = newNode(4);
	root->right = newNode(11);
	root->left->left = newNode(2);
	root->left->right = newNode(5);
	root->right->right = newNode(13);
	root->right->right->left = newNode(12);
	root->right->right->right = newNode(15);
	root->left->left->left = newNode(1);
	root->left->left->right = newNode(3);

	/*this creates a binary tree that looks like this
	     10
		/ \
	   4   11
	  / \   \
	 2   5   13
	/ \     / \
	1  3   12   15 
		*/
	Node* head = NULL;
	treeSorter(root, &head);

	printDouble(head);
	system("PAUSE");
	return 0;
}
