#include <iostream>

int GeometricalProg(int a)
{
    int sum = 0;
    int sum_1 = sum;
    for (int i = 0; i < 10000; i++) {
        sum = a*3+sum_1;
        sum_1 = sum;
    }
    return sum;
}

int main() {
    for (int i = 0; i < 75000; i++) {
        std::cout<<"Geometrical progression: "<<GeometricalProg(i)<<std::endl;
    }
    return 0;
}


