#include "vector.h"
#include <iostream>

vector::vector(int x_set,int y_set,int z_set)
{
    x = x_set;
    y = y_set;
    z = z_set;
    std::cout << "\nvector created\n" <<std::endl;
}

void vector::set_x(int x_new)
{
    x = x_new;
}

void vector::set_y(int y_new)
{
    y = y_new;
    
}

void vector::set_z(int z_new)
{
    z = z_new;
}

void vector::display()
{
    std::cout << "x:\t" << x
        << "\ty:\t" << y
        << "\tz:\t" << z << std::endl;
}