#include <iostream>
#include<string>
using namespace std;

void triangle(ostream& outs, unsigned int m, unsigned int n) {

	if (m>n)  //if the precondition fails
		return;

	for (int i = 1; i <= m; i++)
		outs << '*';
	outs << endl;
	triangle(outs, m + 1, n);
	for (int i = 1; i <= m; i++)
		outs << '*';
	outs << endl;
}

void numbers(ostream& outs, const string& prefix, unsigned int levels) {

	if (levels == 0) {
		outs << prefix << endl;
		return;
	}

	for (int i = 1; i <= 9; i++) {
		string d = (levels == 1 ? "" : "."); //takes care of the base case
		string p = prefix + std::to_string(i) + d;
		numbers(outs, p, levels - 1);
	}
}

bool bears(int n) {
	if (n < 42)
		return false;

	if (n == 42)
		return true;

	//continues if condition is not satisfied
	if ((n % 5 == 0) && bears(n - 42)) return true;

	if ((n % 2 == 0) && bears(n / 2)) return true;

	if (n % 4 == 0 || n % 3 == 0)
	{
		int k;
		int p;
		k = n % 10;
		p = (n % 100) / 10;
		return k * p != 0 && bears(n - k * p);
	}

	return false;
}

void main() {

	int num, x, y, level;
	string subject;


	do {
		//prompts for asterisk ammount start and max
		cout << "enter the amount of asterisks at start (enter 0 to end loop): ";
		cin >> x;
			cout << "enter the amount of asterisks for max (enter 0 to end loop): ";
			cin >> y;
		if (x&&y!=0) {
			triangle(cout, x, y);
		}
	} while (x&&y != 0);

	do {
		//prompts for asterisk ammount start and max
		cout << "enter the subject please (enter EXIT to end loop): ";
		cin >> subject;
		cout << "enter a number for the amount levels for each section: ";
		cin >> level;
		if (subject!="EXIT") {
			numbers(cout, subject, level);
		}
	} while (subject!="EXIT");


	do {
		//prompts for the amount of bears
		cout << "enter the amount of bears (enter 0 to end loop): ";
		cin >> num;
		if (bears(num)) {
			cout << "you have reached the goal!" << endl;
		}

		else {
			cout << "you have not reached the goal." << endl;
		}
	} while (num != 0);
}