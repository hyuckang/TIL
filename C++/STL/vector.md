# vector

---

```cpp
vector<int> A = {1, 2, 3, 4, 5}

// push_back
A.push_back(10)  // {1, 2, 3, 4, 5, 10}
A.push_back(20)  // {1, 2, 3, 4, 5, 10, 20}
A.pop_back()     // {1, 2, 3, 4, 5, 10}
A.pop_back()     // {1, 2, 3, 4, 5}

// 원소 접근
A.at(0)   // 1
A[0]      // 1
A.at(3)   // 4
A[4]      // 5 

// erase
A.erase(A.begin() + 2) // {1, 2, 4, 5}
A.erase(A.end()) // Error!
A.erase(A.end() - 1); // {1, 2, 3, 4}

// insert
A.insert(A.begin(), 10)      // {10, 1, 2, 3, 4}
A.insert(A.being() + 1, 7)   // {10, 7, 1, 2, 3, 4}
A.insert(A.end(), 8)         // {10, 7, 1, 2, 3, 4, 8}
A.insert(A.end() - 1, 30)     // {10, 7, 1, 2, 3, 4, 30, 8}

// front, back
A.front()   // 10
A.back()    // 8
```