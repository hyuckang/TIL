# ELB(Elastic Load Balancing)

> ELB란 AWS에서 제공하는 로드밸런싱(서버 부하분산) 서비스

> 로드밸런서가 필요한 이유 → 지속적인 서비스를 제공하기 위해서 로드밸런서를 사용하면 애플리케이션의 가용성과 내결함성이 높아진다.

> 로드 밸런서는 **"클라이언트 에서 오는 트래픽을 허용**"하고, 하나 이상의 가용 영역에서 **"등록된 대상으로 요청을 라우팅"** 하며 **"클라이언트에 대한 단일 접점 역할"**을 한다.

> 로드밸런서는 **"등록된 대상의 상태를 모니터링하고 정상 대상으로만 트래픽을 라우팅"**한다. **"비정상 대상을 감지하면, 해당 대상으로 트래픽 라우팅을 중단"**한다. 이후 대상이 **"다시 정상으로 감지되면 트래픽을 해당 대상으로 다시 라우팅"** 한다.

> **"리스너(Listener)는 프로토콜 및 포트를 사용하여 클라이언트의 연결 요청을 확인하는 프로세스"** **"대상 그룹(Target Group)은 리스너 규칙에 따라 트래픽을 전달 받는 대상"**

> **"교차 영역 로드밸런싱"**을 활성화하면 로드밸런서는 **"활성화 된 모든 가용 영역에 있는 대상으로 트래픽을 분산"**합니다. 예를 들어 AZ-A에 EC-2 2대, AZ-B에 EC-2 8대가 있을 때, 교차 영역 로드밸런싱이 활성화되어 있다면 EC-2마다 10%씩 부하를 분산하고, 활성화되어 있지 않다면 AZ-A와 AZ-B에 50%씩 부하를 분산한다. ALB(Application LB)는 교차 영역 밸런싱이 항상 사용되고, NLB(Network LB), GLB(Gateway LB)는 기본적으로 비활성화 되어있다.

- 참고

  [What is Elastic Load Balancing?](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)