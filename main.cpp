#include <iostream>
#include "vector/vector.h"

using namespace std;
int main(void)
{
    cout << "hello world" << endl;
    vector v1(1,2,3);
    v1.display();
    v1.set_x(3);
    v1.set_y(2);
    v1.set_z(1);
    v1.display();
    int x;
    int y;
    int z;
    cin >> x;
    cin >> y;
    cin >> z;
    v1.set_x(x);
    v1.set_y(y);
    v1.set_z(z);
    v1.display();
    return 0;
}