
#include <iostream>
#include <limits>

using namespace std;
//creates variable choice for user
int Choice;

int main()
{

	

	do {
		//prompts the user to choose a beverage
		cout << "Please choose a number 1 through 5" << endl
			<< "1 for Mountain Dew, 2 for Coca Cola, 3 for Lemonade, 4 for Dr. Pepper, and 5 for Water\n";
		//sets choice to a value chosen by user
		cin >> Choice;

		//switch that takes in the variable choice and gives response based on the case
		switch (Choice)
		{
		case 1:

			cout << "Here is your Mountain Dew\n";
			break;

		case 2:

			cout << "Here is your Coke\n";
			break;

		case 3:

			cout << "Here is your Lemonade\n";
			break;

		case 4:

			cout << "Here is your Dr. Pepper\n";
			break;

		case 5:

			cout << "Here is your Water\n";
			break;

			//a default case that is used if no other case matches the switch
		default:
			cout << "Error, Sorry that choice was not valid, Here is your money back ";
			break;

		}
	}
		//makes sure the switch is only used if the choice fits the requirements
		while (Choice < 1 || Choice>5);

		system("PAUSE");
		return 0;
	}


