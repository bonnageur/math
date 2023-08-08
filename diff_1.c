// differentiate 2x^3 + 1
// memory safe and optimization. there's not much to do, though.
// gcc-13

#include <stdio.h>

// define the function f(x) = 2x^3 + 1
double f(double x) {
    return 2 * x * x * x;
}

// calculate the derivate of f(x) at a given point using central difference method
double derivative(double x, double h) {
    return (f(x + h) - f(x - h)) / (2 * h);
}

int main() {
    double x = 1.0;        // point at which to calculate the derivative
    double h = 0.0001;     // small increment for numerical differentiation

    double df_dx = derivative(x, h);

    printf("The derivated of f(x) = 2x^3 + 1 at x = %.2f is %.2f\n)", x, df_dx);

    return 0;
}
