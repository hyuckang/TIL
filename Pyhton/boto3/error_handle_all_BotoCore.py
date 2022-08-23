import boto3
import botocore

try:
    ses = boto3.Session(profile_name = 'empty_profile')

except botocore.exceptions.BotoCoreError as core_err:
    raise RuntimeError(core_err) from core_err

# 실행 결과
# RuntimeError: The config profile (empty_profile) could not be found