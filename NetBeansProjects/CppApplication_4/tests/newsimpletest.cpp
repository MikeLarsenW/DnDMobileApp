/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   newsimpletest.cpp
 * Author: Mike
 *
 * Created on March 14, 2018, 9:52 PM
 */

#include <stdlib.h>
#include <iostream>

/*
 * Simple C++ Test Suite
 */

int eval(int op1, int op2, char operate);

void testEval() {
    int op1;
    int op2;
    char operate;
    int result = eval(op1, op2, operate);
    if (true /*check result*/) {
        std::cout << "%TEST_FAILED% time=0 testname=testEval (newsimpletest) message=error message sample" << std::endl;
    }
}

int evalPostfix(char postfix[], int size);

void testEvalPostfix() {
    char* postfix;
    int size;
    int result = evalPostfix(postfix, size);
    if (true /*check result*/) {
        std::cout << "%TEST_FAILED% time=0 testname=testEvalPostfix (newsimpletest) message=error message sample" << std::endl;
    }
}

int main(int argc, char** argv) {
    std::cout << "%SUITE_STARTING% newsimpletest" << std::endl;
    std::cout << "%SUITE_STARTED%" << std::endl;

    std::cout << "%TEST_STARTED% testEval (newsimpletest)" << std::endl;
    testEval();
    std::cout << "%TEST_FINISHED% time=0 testEval (newsimpletest)" << std::endl;

    std::cout << "%TEST_STARTED% testEvalPostfix (newsimpletest)" << std::endl;
    testEvalPostfix();
    std::cout << "%TEST_FINISHED% time=0 testEvalPostfix (newsimpletest)" << std::endl;

    std::cout << "%SUITE_FINISHED% time=0" << std::endl;

    return (EXIT_SUCCESS);
}

