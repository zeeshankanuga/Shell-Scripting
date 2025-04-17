#!/bin/bash

# Show installed version
echo "✅ AWS CLI is installed."
aws --version

# Prompt for AWS region
read -p "📍 Enter AWS region (e.g., us-east-1): " REGION

echo -e "\n🔎 Fetching AWS resources in region: $REGION..."

# List EC2 instance IDs
echo -e "\n--- 🖥️ EC2 Instances ---"
aws ec2 describe-instances --region "$REGION" \
  --query 'Reservations[*].Instances[*].InstanceId' --output text

# List S3 buckets (S3 is global)
echo -e "\n--- 📦 S3 Buckets ---"
aws s3api list-buckets --query 'Buckets[*].Name' --output text

# List VPC IDs
echo -e "\n--- 🌐 VPC IDs ---"
aws ec2 describe-vpcs --region "$REGION" \
  --query 'Vpcs[*].VpcId' --output text


