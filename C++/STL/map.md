# MAP

``` cpp
#include <iostream>
#include <map>
using namespace std;
// Maps are associative containers that
// store elements formed by a 'combination of a key value and a mapped value', following a specific order.
int main()
{
    // map 선언
    // map은 기본적으로 key를 기준으로 오름차순 정렬이 된다.
    map<string, int> MP;
    // 내림차순으로 정렬하고 싶다면 다음과 같이 선언하면된다. grater<key 자료형> 추가
    // map<string, int, greater<string>> MP;

    // 요소 삽입
    MP["AAA"] = 4;  // ("AAA", 4) 삽입
    MP["BBB"] = 8;  // ("BBB", 8) 삽입
    MP.insert(make_pair("111", 9)); // ("111", 9) 삽입  
    MP.insert(make_pair("0", 100)); // ("0", 100) 삽입

    // size
    cout << "MP size : " << MP.size() << "\n";  // MP size : 4

    // value 접근
    cout << MP["111"] << "\n";  // 9 출력
    cout << MP["AAA"] << "\n";  // 4 출력
    
    cout << MP["YYY"] << "\n";  // 0 출력
    cout << MP["ZZZ"] << "\n";  // 0 출력

    // value 수정
    MP["AAA"] += 100;
    cout << MP["AAA"] << "\n";  // 104 출력

    // 삭제
    MP.erase("AAA"); // "AAA"를 키로 가진 요소 삭제
    MP.erase("ZZZ"); // "ZZZ"를 키로 가진 없는 요소 삭제, 에러 나지 않음

    // find
    // 찾는 key가 없으면, end()를 반환한다.
    // 아래는 "999999 is not in MP"가 출력된다
    if(MP.find("999999") == MP.end())
        cout << "999999 is not in MP\n";
    else
        cout << "999999 is in MP\n";

    // empty
    // 비어있다면 true, 비어있지 않다면 false
    // 아래는 "MP is not empty" 가 출력된다
    if(MP.empty() == true)
        cout << "MP is empty\n";
    else
        cout << "MP is not empty\n";

    // MP 순회
    // 아래와 같이 출력된다.
    /*  0 100
        111 9
        BBB 8
        YYY 0   */
    for(auto it : MP)
        cout << it.first << " " << it.second << "\n";

    // clear
    MP.clear();
    cout << "MP size : " << MP.size() << "\n";  // MP size : 0
}
```
