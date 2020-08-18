# queue

```cpp
#include <queue>

queue<int> Q;

// push, O(1)
Q.push(1);	// {1}
Q.push(15);	// {1, 15}
Q.push(30);	// {1, 15, 30}
Q.push(40);	// {1, 15, 30, 40}

// pop, O(1)
Q.pop();	// {1, 15, 30}
Q.pop();	// {1, 15}

// front, back, O(1)
Q.front();	// 1
Q.back();	// 15

// size, empty, O(1)
Q.size();    // 2
Q.empty();   // false
```