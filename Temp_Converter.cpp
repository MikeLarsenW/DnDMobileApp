#include <iostream>
using namespace std;

int main()
{
	double nCelsius, nFahr;

	cout << "Enter the temperature in Celsius: ";
	cin >> nCelsius;

	//made sure that the math was written with the correct prioritys
	cout << "Celsius " << nCelsius << " is Fahrenheit degree ";
	cout << nCelsius* 9 / 5 + 32 << endl;

	
	cout << "\nEnter the temperature in Fahrenheit: ";
	cin >> nFahr;

	//made sure that the math was written with the correct prioritys
	cout << "Fahrenheit " << nFahr << " is Celsius degree ";
	cout << (nFahr - 32) * 5 / 9 << endl;

	//added a pause for the program so that users can see the Celsius degree before the program closes
	system("PAUSE");
	return 0;
}
