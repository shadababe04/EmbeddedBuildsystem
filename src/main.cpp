#include <iostream>
#include "add.h"
#include "sub.h"
#include "mul.h"
#include "div.h"



using namespace std;

int main()
{
    // cout << "Hello Shadab" <<endl ;

    double a = 10.0;
    double b = 5.0;

    cout << "Addition :" << add( a, b)<<endl;
    cout << "Subtraction :" << sub( a, b)<<endl;
    cout << "Multiplication :" << mul( a, b)<<endl;
    cout << "Division :" << div( a, b)<<endl;
    return 0;
}