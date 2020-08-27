# vector

```cpp
#include <iostream>
#include <vector>
using namespace std;

// Vectors are sequence containers representing arrays that can change in size.
vector<int> A = {1, 2, 3, 4, 5};

int main()
{
    // push_back, O(1)
    A.push_back(10);  // {1, 2, 3, 4, 5, 10}
    A.push_back(20);  // {1, 2, 3, 4, 5, 10, 20}
    A.pop_back();     // {1, 2, 3, 4, 5, 10}
    A.pop_back();     // {1, 2, 3, 4, 5}

    // elemental access, O(1)
    cout << A.at(0) << "\n";    // 1
    cout << A[1] << "\n";       // 2
    cout << A[0] << "\n";       // 1
    cout << A.at(3) << "\n";    // 4

    // erase, O(N)
    A.erase(A.begin() + 2); // {1, 2, 4, 5}
    A.erase(A.end());       // Error!
    A.erase(A.end() - 1);   // {1, 2, 3, 4}

    // insert, O(N)
    A.insert(A.begin(), 10);      // {10, 1, 2, 3, 4}
    A.insert(A.begin() + 1, 7);   // {10, 7, 1, 2, 3, 4}
    A.insert(A.end(), 8);         // {10, 7, 1, 2, 3, 4, 8}
    A.insert(A.end() - 1, 30);    // {10, 7, 1, 2, 3, 4, 30, 8}

    // front, back, O(1)
    A.front();   // 10
    A.back();    // 8
}
```
