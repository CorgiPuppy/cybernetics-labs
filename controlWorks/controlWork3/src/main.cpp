#include <iostream>
#include <cmath>
#include <iomanip>

#include "../include/Constants.h"

double f(double x) {
    return x + 1.0 / log(x);
}

double goldenSectionMin(double a, double b, double eps) {
    const double phi = (1 + std::sqrt(5)) / 2;
    double x1, x2;

    x1 = b - (b - a) / phi;
    x2 = a + (b - a) / phi;

    double f1 = f(x1);
    double f2 = f(x2);

    int iterations = 0;
    while (fabs(b - a) > eps) {
        if (f1 < f2) {
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = b - (b - a) / phi;
            f1 = f(x1);
        }
        else {
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + (b - a) / phi;
            f2 = f(x2);
        }
        iterations++;
    }

    return (a + b) / 2;
}

int main() {
    double a = Constants::a;
    double b = Constants::b;
    double eps = Constants::epsilon;

    double x_min = goldenSectionMin(a, b, eps);
    double f_min = f(x_min);

    std::cout << std::fixed << std::setprecision(5);
    std::cout << "варинт 7: F(x) = x + 1/ln(x) on [" << a << ", " << b << "]" << std::endl;
    std::cout << "---------------------------------------" << std::endl;
    std::cout << "Результат (x_min): " << x_min << std::endl;
    std::cout << "Значение функции в точке минимума: " << f_min << std::endl;

    return 0;
}
