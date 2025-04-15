#!/bin/bash

#AWS s3
#AWS ec2
#AWS lamda
#AWS IAM user


aws s3 ls
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws lambda list-functions
aws iam list-users
