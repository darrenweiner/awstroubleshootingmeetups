stackname=cloudbutton-lambda-meetup-launch
region=us-west-2
profile=CloudButton_Admin
s3bucket=cloudbutton-s3-repository
echo "packaging"
aws cloudformation --profile ${profile} --region ${region} package --template-file template.yaml --output-template template-output.yaml --s3-bucket ${s3bucket}
echo "deploying"
aws cloudformation deploy --profile ${profile} --region ${region} --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --template-file template-output.yaml --stack-name ${stackname}