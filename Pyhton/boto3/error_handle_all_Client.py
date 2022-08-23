import boto3
import botocore

ses = boto3.Session(profile_name = 'poc')
iam = ses.client('iam')

try:
    result = iam.get_user(
        UserName = 'empty_user'
    )

except botocore.exceptions.ClientError as client_err:
    raise RuntimeError(client_err.response['Error']['Message']) from client_err

# 실행 결과
# RuntimeError: The user with name empty_user cannot be found.