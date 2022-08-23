- 모듈은 재사용할 수 있고 유지 관리할 수 있으며 테스트할 수 있는 테라폼 코드를 작성하는데 있어 핵심요소
- 모듈 사용 구문
    ```
    module "<NAME>" {
    source = "<SOURCE>"

    [CONFIG ...]
    }
    ```

- locals 사용 구문
    ```
    locals {
        http_port     = 80
        any_port      = 0
        any_protocol  = -1
        tcp_protocol  = "tcp"
        all_ips       = ["0.0.0.0/0"]
    }
    ```

- locals 참조 : `local.http_port`
- 모듈을 만들 때는 항상 별도의 리소스를 사용하는 것이 좋다. 예를들어 보안그룹과 보안그룹 룰, 라우팅 테이블과 라우팅 룰
- 지정된 모듈(`versioned modules`)
- 모듈의 source 매개 변수는 파일 경로 이외에도 git URL과 같은 HTTP URL 모듈 소스도 지원

- 시맨틱 버전 관리 (`semantic versioning`)
    - 버전 체계
    - `MAJOR.MINOR.PATH`
    - MAJOR : 호환되지 않는 API 변경시 증가
    - MINOR : 이전 버전과 호환되는 방식으로 기능을 추가할때 증가
    - PATH : 이전 버전과 호환되는 버그 수정 시 증가

- 깃 태그 달기
```
git tag -a "v0.0.1" -m "First release of webserver-cluster module"
git push --follow-tags
```

- 모듈의 이점
    1. best practice 적용 가능
    2. 코드 리뷰 및 자동화된 테스르를 통해 변경 사항 확인 가능
    3. 모듈에 버전을 지정하여 배포 가능
    4. 버저닝 된 모듈로 롤백 가능