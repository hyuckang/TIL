# MAP

``` cpp
#include <iostream>
#include <map>
using namespace std;

// Maps are associative containers that
// store elements formed by a 'combination of a key value and a mapped value', following a specific order.
map<int, string> MP;

int main()
{
    // insert, O(logn)
    MP[1] = "Hello";
    MP[3] = "Cpp";
    MP.insert(make_pair(2, "World"));
    MP.insert(make_pair(15, "STL"));
    MP.insert(make_pair(25, "MAP"));

    // access value, O(logn)
    // output : Hello STL
    cout << MP[1] << " ";
    cout << MP[15] << "\n";

    // erase, O(logn)
    MP.erase(15);
    MP.erase(3);

    // change value
    // output : change
    MP[1] = "change";
    cout << MP[1] << "\n";

    // size
    // output : 3
    cout << MP.size() << "\n";

    // empty
    // output : MP is not empty
    if(MP.empty())
        cout << "MP is empty\n";
    else
        cout << "MP is not empty\n";
}
```
