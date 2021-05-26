# 퍼블릭 서브넷과 프라이빗 서브넷, IGW와 NAT 디바이스

---

> 퍼블릭 서브넷 내에 있는 인스턴스는 **<u>"퍼블릭IP과 프라이빗IP"</u>**를 가지고 있다.
> 프라이빗 서브넷 내에 있는 인스턴스는 **<u>"프라이빗IP"</u>**만을 가지고 있다.

> 퍼블릭 서브넷 내에 인스턴스는 **<u>"IGW(Internet GateWay)"</u>**를 통해 외부와 통신한다.
> 프라이빗 서브넷 내에 있는 인스턴스는 **<u>"NAT디바이스(NAT인스턴스, NGW(NAT GateWay))"</u>**를 통해 외부와 통신한다.

> IGW는 **<u>"프라이빗IP을 퍼블릭IP or 탄력적IP로 1:1 NAT"</u>**를 수행한다.
> NAT디바이스는 **<u>"프라이빗IP와 포트를 NAT디바이스의 IP와 포트로 변환하여 IGW로 트래픽을 전송"</u>**한다.
> 추가적으로, **<u>"NAT디바이스는 퍼블릭 서브넷에 존재해야하고 퍼블릭IP 또는 탄력적IP가 있어야"</u>**한다.
> ( NGW는 생성할때 탄력적IP를 선택, NAT디바이스는 탄력적IP 주소 또는 퍼블릭IP주소를 함께 사용)

- 참고

  https://docs.aws.amazon.com/ko_kr/vpc/latest/userguide/vpc-nat-comparison.html

