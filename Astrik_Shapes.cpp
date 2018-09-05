
#include <iostream>
#include <limits>

using namespace std;



int main()
{
	//Variable for creating spaces for the triangles
	int space;

		//this loop creates the rows for the first triangle
		for (int i = 1; i <= 5; ++i)
		{
			//this loop populates rows with *
			for (int k = 1; k <= i; ++k)
			{
				cout << "*";
			}
			cout << "\n";
		}

		//this creates the second triangle 
		//this loop sets variables and intiates other loops
		for (int i = 1, k = 0; i <= 5; ++i, k = 0)
		{
			//this loop then creates the spaces needed to shift the triangle over
			for (space = 1; space <= 5-i; ++space)
			{
				cout << " ";
			}
			//this while loop makes sure that each row has the right amount of astriks
			while (k !=i)
			{
				cout << "*";
				++k;
			}
			cout << endl;
		}

		//this is very similar to the loop above but instead creates a pyriamd with 4 rows
		for (int i = 1, k = 0; i <= 4; ++i, k = 0)
		{
			for (space = 1; space <= 4 - i; ++space)
			{
				cout << " ";
			}
			//this is the main difference between the loop for the 2 triangle, it instead
			//creates an uneven row of astriks which starts at 1 and then goes up to each odd
			//number until it gets to the amount of rows we want, ie row 1 has 1 astrik row 2 has 3 etc.
			while (k !=2*i-1)
			{
				cout << "*";
				++k;
			}
			cout << endl;
		}
		//this loop is part of the diamond but it is the same as the loop above
		for (int i = 1,k = 0;i <= 4; ++i,k = 0)
		{
			for (space = 1;space <= 4 - i;++space)
			{
				cout << " ";
			}

			while (k !=2*i-1)
			{
				cout << "*";
				++k;
			}
			cout << endl;
		}
		//this loop is similar to the one above but it creates a pyriaymd downwards
		//here instead we have i start at 3 which is the number of rows we want,
		//then go down until i>=1 and then stops. this makes the other parts of the loop 
		//to work backwards
		for (int i = 3, k = 0; i >= 1; --i, k = 0)
		{
			for (space = 1; space <= 4 - i; ++space)
			{
				cout << " ";
			}

			while (k !=2*i-1)
			{
				cout << "*";
				++k;
			}
			cout << endl;
		}


		system("PAUSE");
		return 0;
	
}


