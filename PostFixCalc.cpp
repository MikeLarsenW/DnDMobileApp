#include<iostream>
#include<stack>
#include<string>

using namespace std;

// decides whether if the input is a number
bool IsNumericDigit(char N)
{
	if (N >= '0' && N <= '9') return true;
	return false;
}

// determines if the symbol is an operator 
bool IsOperator(char N)
{
	if (N == '+' || N == '-' || N == '*' || N == '/')
		return true;

	return false;
}
// evaluates the operator symbol
int PerformOperation(char operation, int operand1, int operand2)
{
	if (operation == '+') return operand1 + operand2;
	else if (operation == '-') return operand1 - operand2;
	else if (operation == '*') return operand1 * operand2;
	else if (operation == '/') return operand1 / operand2;

	else cout << "Error \n";
	return -1;
}

int EvaluatePostfix(string expression)
{
	// Declaring a Stack 
	stack<int> S;

	for (int i = 0; i< expression.length(); i++) {



		if (expression[i] == ' ' || expression[i] == ',') continue;

		//when it finds an operator it takes two from the stack and performs the operation
		//and returns the result

		else if (IsOperator(expression[i])) {

			int op2 = S.top();
			S.pop();
			int op1 = S.top();
			S.pop();

			int result = PerformOperation(expression[i], op1, op2);

			//Push back result of operation on stack. 
			S.push(result);
		}
		//this will find digits and will calcuate digits without a space as a double digit number
		else if (IsNumericDigit(expression[i])) {

			int op = 0;
			while (i<expression.length() && IsNumericDigit(expression[i])) {
				// finds digits with more than on digit.

				op = (op * 10) + (expression[i] - '0');
				i++;
			}


			i--;

			// pushes on stack
			S.push(op);
		}
	}

	// when the last item is scanned it will return result 
	return S.top();
}

int main()
{
	string expression;
	cout << "enter a postfix expression \n";
	getline(cin, expression);

	int result = EvaluatePostfix(expression);
	cout << " The result  is " << result << "\n";
	system("PAUSE");
}