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

# Define log file path
LOG_FILE="$HOME/resourceTracker.log"

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users

echo "Print list of S3 buckets" >> $LOG_FILE
aws s3 ls >> $LOG_FILE

echo "Print list of EC2 instances" >> $LOG_FILE
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $LOG_FILE

echo "Print list of Lambda functions" >> $LOG_FILE
aws lambda list-functions >> $LOG_FILE

echo "Print list of IAM users" >> $LOG_FILE
aws iam list-users >> $LOG_FILE
