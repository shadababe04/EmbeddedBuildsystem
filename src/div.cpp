#include "div.h"

double div(double a, double b){

    if(b !=0){
        return a/b;
    }else{
        throw std::runtime_error("Division by zero");
    }

}