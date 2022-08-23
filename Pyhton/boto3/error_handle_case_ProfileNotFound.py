import boto3
import botocore

try:
    ses = boto3.Session(profile_name = 'empty_profile')

except botocore.exceptions.ProfileNotFound as profile_err:
    raise RuntimeError(profile_err) from profile_err

# 실행 결과
# RuntimeError: The config profile (empty_profile) could not be found