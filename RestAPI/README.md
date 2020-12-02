# REST API

> API, REST, REST API

- API(Application Programming Interface)
  - "특정 서비스"나 "응용프로그램"에서 사용할수 있도록 "OS"나 "프로그래밍 언어"가 제공하는 "기능을 제어할 수 있게 만든 인터페이스"

- REST(REpresentational State Transfer)
  - HTTP에 기반하여 필요한 자원에 접근하는 방식을 정해놓은 아키텍쳐
  - 자원의 상태를 전달하는 방식
  - <u>**"Resource(자원, HTTP URI), Verb(자원에 대한 행위, HTTP Method), Representations(자원에 대한 행위의 내용을 정의, HTTP Message Pay Load)"**</u>로 구성
- REST API
  - REST으로 만든 API
  - **모든 Resource는 HTTP메소드 GET(Read), POST(Create), PUT(Update), DELETE(Delete)**
  - 서버 사이드의 모든 Resource는 클라이언트가 접근 가능한 URI를 가지고있다.
  - HTTP 표준을 따르는 모든 플랫폼에서 사용가능



> URI, URL, URN

- URI(Uniform Resource <u>Identifier</u>) : <u>통합 자원 식별자</u>, <u>자원을 고유하게 식별하게 해줌</u>
- URL(Uniform Resource <u>Locator</u>) : 실질적으로 리소스가 <u>어디에 있고</u> 어떻게 접근하는지
- URN(Uniform Resource <u>Name</u>) : 위치에 상관 없이 <u>이름으로 자원에 접근</u>, 실제 자원의 이름을 사용하는 방식

- <u>URI는 URL, URN을 포함하는 상위 개념이다.</u>

  

### REST API 디자인 가이드

---

- **<u>URI는 정보의 자원을 표현해야 한다.</u>**

- **<u>동사보다는 명사를 사용한다. REST API는 대상에 대한 행동(CRUD)를 정의하는 개념</u>**

  ex) HTTP POST /getDogs (X) -> HTTP GET /Dogs (O)

  ex) HTTP POST /setDogsOwner(X) -> HTTP POST /dogs/{dogs id}/owner/{owner id}



### URI 작성규칙

---

- 소문자를 사용한다.

- 밑줄(_)을 사용하지 않고, 하이픈(-)을 사용한다

- jpg, txt와 같은 확장자는 사용하지 않는다

- <u>슬래시(/)는 계층관계를 나타내는데 사용</u>

  ex) http://test.com/animal/cat

  ex) http://test.com/

- <u>리소스 간의 관계는 URI를 통해 표현</u>

  ex) /students/tom/friends -> 학생 톰의 친구들

  ex) /user/{user_id}/posts -> user_id의 posts를

