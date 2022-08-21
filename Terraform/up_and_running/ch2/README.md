- AWS 환경변수 설정하기, 환경변수는 현재 셸에서만 적용 된다
  ```
  export AWS_ACCESS_KEY_ID=(access key)
  export AWS_SECRET_ACCESS_KEY=(secret key)
  ```

- 참조(reference) : `<PROVIDER>_<TYPE>.<NAME>.<ATTRIBUTE>`
- 명령 줄의 `-var` 옵션이나 환경 변수(`TF_VAR_<NAME>`)를 통해 변수 값을 제공할 수 있습니다.
  ```
  terraform plan -var "server_port=8080"
  export TF_VAR_server_port=8080
  ```

- 변수 참조 표현식 : `var.<VARIABLE_NAME>`
- 문자열 리터럴 내에서 참조 : `${var.VARIABLE_NAME}`
- `terraform output <OUTPUT_NAME>` : 특정 출력 변수의 값 확인
- `수명주기(lifecycle)` : 리소스의 생성, 업데이트, 및 삭제 방법을 구성하는 방법
- `create_before_destory` : 교체 리소스를 먼저 생성하고 기존 리소스를 삭제

- 리소스 생성구문
  ```
  resource "<PROVIDER>_<TYPE>" "<NAME>" {
    [CONFIG ...]
  }
  ```

- 변수 생성구문
  ```
  variable "NAME" {
    [CONFIG ...]
  }
  ```

- 출력변수 생성구문
  ```
  output "<NAME>" {
  value = <VALUE>
  [CONFIG ...]
  }
  ```

- 데이터 소스 생성 구문
  ```
  data "<PROVIDER>_<TYPE>" "<NAME>" {
    [CONFIG ...]
  }
  ```