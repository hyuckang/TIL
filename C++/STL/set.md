# Set
```
#include <iostream>
#include <set>
using namespace std;

// Sets are containers that 
// 'store unique elements' following a 'specific order'.
// Sets are typically implemented as 'binary search trees'.
set<int> S;

int main()
{
    // insert
    S.insert(94);
    S.insert(666);    
    S.insert(11);
    S.insert(0);

    // Sets are sorted by default in ascending order
    // output : 0 11 94 666
    set<int>::iterator S_itr = S.begin();
    for(; S_itr != S.end(); S_itr++)
        cout << *S_itr << " ";
    cout << "\n";
    

    // find()
    // X not in S, return S.end()
    // X in S, return X's iterator
    // output : 7 is not in S
    int X = 7;
    if(S.find(X) == S.end())
        cout << X << " is not in S\n";
    else
        cout << X << " is in S\n";
    
    // erase
    S.erase(S.begin()); // 11 94 666    

    // size
    // output : 3
    cout << S.size() << "\n";

    // clear
    S.clear();
}
```
