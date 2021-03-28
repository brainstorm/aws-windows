 ![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14-blue.svg)


#  Setup a cloud Windows Virtual Machine on AWS using Terraform

## TL'DR
We are launching a few commands on MacOS Terminal to install Terraform, link it to our AWS account, spin up a Windows Virtual Machine at very high specs on demand on AWS, auto-install Steam/Epic Launcher, and use it for regular windows desktop tasks, including high FPS games. This works on any old client.

## Quick start

 **Note**: This project deploys resources into your AWS account. You **WILL BE** charged money for running this. A GPU instance like the `g4dn.xlarge` are billed at around £0.4/hour ([Prices here](https://aws.amazon.com/ec2/instance-types/g4/)). So:

 If you use it a couple of hours every day it's only £10~20/month. 
 If you leave it running 24/7 it will cost you up to £300/month if left running 24/7 D: 
 So **remember to terminate the machine when not in use with `terraform destroy`**

 1. Install [Terraform](https://www.terraform.io/). You can also use https://brew.sh/ to install Brew, and then launch `brew install terraform`
 1. If you don't have an AWS account, quickly [sign up](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/) for one. Obtain your access and secret key as per [this guide](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html).
 1. [TODO]: Use AWSCLIv2 creds instead. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`: Open Terminal and launch:
`export AWS_ACCESS_KEY_ID="replaceYourAccessKeyHere"`
`export AWS_SECRET_ACCESS_KEY="replaceYourSecretKeyHere"`
 1. Create a working folder with this repo inside: 
 `git clone https://github.com/mattiaborsoi/gaming-on-aws-with-terraform`
1. Jump in the working folder with `cd gaming-on-aws-with-terraform` 
 1. Run `terraform init`. 
    1. this will initialize Terraform.
 1. Run `terraform apply`.
    1. this will check the code, preview the changes about to happen and ask you to "enter value" `yes` to confirm.
    1. It'll take a couple of minutes to deploy and start Windows.
    1. Leave Terminal open, you will need it later.
 1. Let's connect to the Windows VM via Remote Desktop:
    1. Head to [AWS Console](https://console.aws.amazon.com/ec2/v2/home?Instances:sort=instanceId), select the Instance and click **Connect** on the top. This lets you download the Remote Desktop profile to use with [Microsoft Remote Desktop App](https://apps.apple.com/gb/app/microsoft-remote-desktop/id1295203466?mt=12)
    1. As you login into Windows and the setup is finalised, open Parsec in both Windows and your Mac. Use that to control Windows. Parsec offers better remote control with lower latency, wich is 100x better than using Remote Desktop.
 1. Close RDP and use Parsec to setup and launch any game.

## Don't forget!
Once you are done, remember to run the below command to clean up and delete all resources we previously created:

> terraform destroy

The destroy command will terminate and delete all AWS configurations, so you won't be billed any further.

## TODO:
- Revise EBS snapshotting.
