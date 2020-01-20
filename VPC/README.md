VPC Troubleshooting Meetup  

WHEN LAUNCHING THESE VIA THE AWS CLOUDFORMATION CONSOLE USING THE BUTTONS PROVIDED BELOW:  
Under 'Stack Creation Options', consider putting a timeout in of 12 minutes.  That will accelerate any troubleshooting if you run into problems.  
You must check the two boxes on the last screen before launching the stack:  
I acknowledge that AWS CloudFormation might create IAM resources with custom names.  
I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND  


|Module          | QuickLaunch |
|----------------|--------------|
|Benchmark| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=vpc-meetup-benchmark&templateURL=hhttps://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-benchmark.yaml)|
|Beginner| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=vpc-meetup-beginner&templateURL=hhttps://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-beginner.yaml)|
|Intermediate| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=vpc-meetup-intermediate&templateURL=hhttps://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-intermediate.yaml)|
|Advanced| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=vpc-meetup-advanced&templateURL=hhttps://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-advanced.yaml)|


Reference Architecture (Mostly complete)

![Reference Architecture](https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/RefArch/RefArch-VPCMeetup.jpeg)


FAQS:
When I launch the stack, do the parameters matter?  
No. To ensure a smooth launch, do not modify the default parameters.  That will not impact the troubleshooting process

Can I view the template code?  
Sure.  You can view in CF Designer or an IDE/Text Editor...whatever you want.

Can I diff different templates?  
No.  That's cheating.  Don't do that. To get the most out of these exercises, you should treat each template as a separate exercise.



