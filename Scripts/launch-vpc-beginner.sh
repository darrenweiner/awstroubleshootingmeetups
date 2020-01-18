region=us-west-2
profile=CloudButton_Admin

stackname=vpc-meetup-benchmark
pathname=/Users/darrenweiner/cloudbutton/Meetups/VPC/CloudFormation/
templatename=vpc_subnets_create_meetup-benchmark.yaml


if [[ $1 == 'D' ]]; then #delete to accelerate iterating

echo "Deleting Stack"

  aws --region ${region} --profile ${profile} cloudformation update-termination-protection --stack-name ${stackname} --no-enable-termination-protection

  aws --region ${region} --profile ${profile} cloudformation delete-stack --stack-name ${stackname}

elif [[ $1 == 'U' ]]; then #update the stack

  aws --region ${region} --profile ${profile} cloudformation update-stack --stack-name ${stackname} --template-body file:///${pathname}${templatename} --capabilities CAPABILITY_NAMED_IAM

elif [[ $1 == 'C' ]]; then #create change set

  aws --region ${region} --profile ${profile} cloudformation create-change-set --stack-name ${stackname} --change-set-name ${stackname}-changeset --template-body file:///${pathname}${templatename} --capabilities CAPABILITY_NAMED_IAM

elif [[ $1 == 'RE' ]]; then
echo "respinning stack"
status=DELETE_IN_PROGRESS
while [[ $status == 'DELETE_IN_PROGRESS' ]]; do
	aws --region ${region} --profile ${profile} cloudformation describe-stacks --stack-name ${stackname} --query 'Stacks[].StackStatus' --output text
	sleep 10;
	echo "waiting until it's done deleting"
done
echo "re-spinning"
  aws --region ${region} --profile ${profile} cloudformation create-stack --stack-name ${stackname} --enable-termination-protection --template-body file:///${pathname}${templatename} --capabilities CAPABILITY_NAMED_IAM
else #carry on and build the stack

  aws --region ${region} --profile ${profile} cloudformation create-stack --stack-name ${stackname} --enable-termination-protection --template-body file:///${pathname}${templatename} --capabilities CAPABILITY_NAMED_IAM

fi
