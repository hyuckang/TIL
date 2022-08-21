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

- 상태 파일을 격리하는 2가지 방법
  - 작업 공간(`workspace`)을 통한 격리 : 동일한 구성을 빠르게 격리
  - 파일 레이아웃을 이용한 격리 : 운영 환경에 적합한 격리

- `terraform workspace` : 테라폼 상태를 별도의 이름을 가진 여러 개의 작업 공간에 저장할 수 있다.

- `terraform workspace show` : 현재 작업공간 확인
- `terraform workspace list` : 작업공간 리스트 확인
- `terraform workspace new <WORKSPACE_NAME>` : 새로운 작업 공간 생성
- `terraform workspace select <WORKSPACE_NAME>` : 작업 공간 전환

- `구성 요소(component)` : 일반적으로 함께 배포되는 일관된 리소스 집합
- 환경(stage, prod 등)과 구성요소(VPC, DB 등)을 별도의 테라폼 폴더 혹은 별도의 상태 파일에서 사용하는 것을 권장

- `variables.tf` : 입력 변수
- `outputs.tf` : 출력 변수
- `main.tf` : 리소스
---
- `terraform_remote_state` : 다른 테라폼 구성 세트의 상태 파일에서 정보를 가져와 읽을수 있습니다.
  ```
  data "terraform_remote_state" "db" {
    backend = "s3"

    config = {
      bucket = "<STATE_BUCKET_NAME>"
      key    = "stage/data-stores/mysql/terraform.tfstate"
      region = "us-east-2"
    }
  }
  ```
- `data.terraform_remote_state.<NAME>.outputs.<ATTRIBUTE>`

---
- 시크릿을 테라폼 리소스로 전달하는 2가지 방법
  - 시크릿 저장소(HashiCorp Valut, AWS Secrets Manager)에서 정보를 가져온다.
  - macOS의 키체인과 같은 툴로 테라폼 외부에서 관리하고 환경 변수를 통해 전달
    export TF_VAR_db_password="password"
---
- file 함수(`file(<PATH>)`) : PATH에서 파일을 읽고 내용을 문자열로 반환
- `template_file` : data source를 사용해 변수를 가져와 렌더링할 수 있습니다