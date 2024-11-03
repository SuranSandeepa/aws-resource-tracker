#!/bin/bash

################################
# Author: Suran
# Date: 3rd-Nov
#
# Version: v1
#
# This script will report the AWS resource usage
####################################

set -x

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users

echo "Print list of s3 buckets"
# list s3 buckets
aws s3 ls > resourceTracker

echo "Print list of ec2 instances"
# list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print list of lambda functions"
# list aws lambda fucntions
aws lambda list-functions > resourceTracker

echo "Print list of IAM users"
# list IAM users
aws iam list-users
