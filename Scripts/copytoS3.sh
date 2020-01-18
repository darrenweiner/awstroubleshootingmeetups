#!/bin/bash
bucket=cloudbutton-meetups
region=us-west-2
profile=CloudButton_Admin
#dryrun="--dryrun"

aws --region ${region} --profile ${profile} s3 sync ../ s3://${bucket}/  --exclude "*" --include "EC2/*" ${dryrun}
aws --region ${region} --profile ${profile}  s3 sync ../ s3://${bucket}/  --exclude "*" --include "VPC/*" ${dryrun}