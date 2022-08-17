- AWS 환경변수 설정하기, 환경변수는 현재 셸에서만 적용 된다
```
export AWS_ACCESS_KEY_ID=(access key)
export AWS_SECRET_ACCESS_KEY=(secret key)
```

- 명령 줄의 `-var` 옵션이나 환경 변수(`TF_VAR_<NAME>`)를 통해 변수 값을 제공할 수 있습니다.
```
terraform plan -var "server_port=8080"
-
export TF_VAR_server_port=8080
terraform plan
```