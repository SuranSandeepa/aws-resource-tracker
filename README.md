# AWS Resource Tracker

## Description

The **AWS Resource Tracker** is a Bash script designed to monitor and report on various AWS resources, including S3 buckets, EC2 instances, Lambda functions, and IAM users. This tool provides a convenient way to audit your AWS environment and ensure that your resources are being utilized effectively.

## Features

- **List S3 Buckets**: Quickly see all S3 buckets in your AWS account.
- **Describe EC2 Instances**: Retrieve information about your running EC2 instances.
- **List Lambda Functions**: Get details about the AWS Lambda functions you have deployed.
- **List IAM Users**: Identify all users with access to your AWS account.

## Prerequisites

Before running the script, ensure you have the following:

- An AWS account with appropriate permissions to access the resources.
- AWS CLI installed on your machine (installed in the EC2 instance in this case).
- `jq` installed for JSON parsing.
- Configured AWS credentials using `aws configure`.

## Installation

1. **Connect to your EC2 instance**:
   ```bash
   ssh -i "<path_to_your_key>/windows-demo.pem" ubuntu@<your_public_ip>


## Setting Up Cron Job

To automate the execution of this script, you can set up a cron job:

1. **Open the crontab configuration**:
   ```bash
   crontab -e


