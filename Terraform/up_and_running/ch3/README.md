- 테라폼 상태
  - 테라폼은 실행할 때마다 생성한 인프라에 대한 정보를 상태 파일에 기록
  - `terraform.tfstate` : 테라폼 상태파일
  - plan의 출력은 상태 파일의 ID를 통해 발견된 구성과 실제 인프라 간의 차이
  - 상태 파일을 직접 편집해서는 안되고, `terraform import` 또는 `terraform state` 명령으로 조작해야합니다.
- `백엔드(backend)`는 상태 파일을 저장할 곳을 정의합니다. 기본 백엔드는 로컬 디스크입니다.

- `prevent_destroy` : lifecycle setting으로 리소스 삭제하려는 경우 오류가 발생합니다. 정말 삭제하려는 경우 주석처리 후 삭제하면 됩니다.

- 백엔드 구성구문
    ```
    terraform {
        backend "<BACKEND_NAME>" {
            [CONFIG ...]
        }
    }
    ```

- 백엔드로 구성한 S3와 dynamoDB를 삭제하려면 backend 구성을 제거하고, init을 재실행하여 테라폼 상태를 로컬디스크에 복사한 후에 destroy 하면됩니다.

- `terraform init -backend-config=backend.hcl`로 backend 구성을 매개변수로 전달할 수 있습니다.