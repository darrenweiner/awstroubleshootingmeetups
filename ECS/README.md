ECS Troubleshooting Meetup  

Your goals are to successfully demonstrate the that:  
* The website associated with the relevant target group displays correctly
* The ECS Service is correctly logging to CloudWatch

What you need to do:  
* Launch either the beginner, intermediate, or advanced stack below. 
* Once the stack is launched and in a COMPLETE status:
* Navigate to the ECS console.
* Locate the relevant cluster: e.g. prod-cloudbutton-beginner 
* update the service, setting number of tasks to 1
* Click through the "Next Step" three times, then the "Update Service" button.
* View the Service.  Once it shows the pending count of 1, you can begin troubleshooting and make whatever changes are needed to the resources to achieve the above goals.

Notes:  
WHEN LAUNCHING THESE VIA THE AWS CLOUDFORMATION CONSOLE USING THE BUTTONS PROVIDED BELOW:  
Under 'Stack Creation Options', consider putting a timeout in of 15 minutes.  That will accelerate any troubleshooting if you run into problems.  
You must check the two boxes on the last screen before launching the stack:  
I acknowledge that AWS CloudFormation might create IAM resources with custom names.  
I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND  


|Module          | QuickLaunch |
|----------------|--------------|
|Benchmark| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=ecs-meetup-benchmark&templateURL=https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-ecs-benchmark.yaml)|
|Beginner| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=ecs-meetup-beginner&templateURL=https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-ecs-beginner.yaml)|
|Intermediate| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=ecs-meetup-intermediate&templateURL=https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-ecs-intermediate.yaml)|
|Advanced| [![Launch Benchmark](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=ecs-meetup-advanced&templateURL=https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/VPC/CloudFormation/vpc_subnets_create_meetup-ecs-advanced.yaml)|


Reference Architecture (NEED TO REVISIT)

![Reference Architecture](https://cloudbutton-meetups.s3-us-west-2.amazonaws.com/RefArch/RefArch-ECSMeetup.jpg)


FAQS:  
What flavors of ECS are used in this workshop?
The beginner and advanced challenges are FARGATE.
The intermediate one is EC2-based in an Autoscale group with a launch template.

Should I launch the benchmark stack?  
No.  This is the 'correct' answer and is here as a reference.  But do not launch this one.  That's considered cheating.

When I launch the stack, do the parameters matter?  
No. To ensure a smooth launch, do not modify the default parameters.  That will not impact the troubleshooting process

Can I view the template code?  
You could, but it will be more challenging and more 'real-world' troubleshooting if you dive into the environment to troubleshoot.  It's up to you.

Can I diff different templates?  
No.  Again...cheating.  Don't do that. To get the most out of this workshop, you should treat each template as a separate exercise.

Can I launch more than one stack at a time?  
Yes, BUT THAT MIGHT MAKE THINGS CONFUSING WHEN TROUBLESHOOTING.  It will save a little time as you move from one to the other.  It's your choice.

If I figure out the beginner module, will that make it easier to figure out the intermediate or advanced ones?  
Probably not.  Each module is designed with different variations of incorrect or wrong configuration.

How do I delete the stacks?  
For most of the modules, when you delete the cloudformation stack, it will cleanly delete all the resources.  However, some might need some manual clean up.  
Instructions for this will follow at the end of the workshop.  Plan for some mop-up.

