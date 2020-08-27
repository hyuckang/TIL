# queue

```cpp
#include <iostream>
#include <queue>
using namespace std;

// queues are a type of container adaptor, specifically designed to operate in a 'FIFO(first-in first-out)' context
// elements are 'inserted into one end' of the container and 'extracted from the other'.
queue<int> Q;

int main()
{
    // push, O(1)
    Q.push(1);	// {1}
    Q.push(15);	// {1, 15}
    Q.push(30);	// {1, 15, 30}
    Q.push(40);	// {1, 15, 30, 40}
    Q.push(99); // {1, 15, 30, 40, 99}

    // pop, O(1)
    Q.pop();	// {15, 30, 40, 99}
    Q.pop();	// {30, 40, 99}

    // front, back, O(1)
    cout << Q.front() << "\n";  // 30
    cout << Q.back() << "\n";   // 99

    // size
    // output : 3
    cout << Q.size() << "\n";
    
    // empty
    // output : Q is not empty
    if(Q.empty())
        cout << "Q is empty\n";
    else
        cout << "Q is not empty\n";

    return 0;
}
```
