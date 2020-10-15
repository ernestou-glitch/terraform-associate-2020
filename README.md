# Terraform Associate Engineer 2020 Practice Exam


### 1. Which one of the following command will rewrite Terraform configuration files to a canonical format and style.

terraform fmt

terraform graph

terraform graph -h

terraform init

### 2. terraform refresh command will not modify infrastructure, but does modify the state file.

TRUE

FALSE

### 3. Which one of the following will run echo 0 and echo 1 on a newly created host

```
provisioner "remote-exec" {
    inline = [
        "echo 0"
        "echo"
    ]
}
```

```
provisioner "remote-exec" {
    inline = [
        echo 0,
        echo 1
    ]
}
```

```
provisioner "local-exec" {
    command = "echo 1"
}
```

```
provisioner "remote-exec" {
    command = "${echo 0}"
    command = "${echo 1}"
}
```

### 4. You do not need to specify every required argument in the backend configuration. Omitting certain arguments may be desirable to avoid storing secrets, such as access keys, within the main configuration. When some or all of the arguments are omitted, we call this a _____________.

incomple configuration

partial configuration

default configuration

changing configuration

### 5. You want to get involved in the development of Terraform. As this is an open source project, you would like to contribute a fix for an open issue of Terraform. What programming language will need to use to write the fix?

GO

Python

It depends on which command the issue relates to

Java

### 6. You are using a terraform operation that writes state. Unfortunately automatic state unlocking has failed for that operation. Which of the below commands can be used to remove the already acquired lock on the state ? 

terraform state unlock

terraform force-unlock

terraform unlock

none of the above

### 7. Which of the below features of Terraform can be used for managing small differences between different environments which can act more like completely separate working directories.

repositories

environment variables

backends

workspaces

### 8. Which of the below configuration file formats are supported by Terraform? (Select TWO)

YAML

HCL

JSON

Node

### 9. You are reviewing Terraform configurations for a big project in your company. You noticed that there are several identical sets of resources that appear in multiple configurations. What feature of Terraform would you recommend to use to reduce the amount of cloned configuration between the different configurations?

packages

modules

provisioners

backends

### 10. What is the default backend for Terraform?

default

consul

local

S3

### 11. terraform refresh will update the state file?

TRUE

FALSE

### 12. You want terraform plan and apply to be executed in Terraform Cloud's run environment but the output is to be streamed locally. Which one of the below you will choose ?

this can be done using any of the local or remote backends

remote backends

local backends

Terraform backends

### 13. Refer to the following terraform variable definition:

```
variable "track_tag {
    type = list
    default = ["data_ec2","integration_ec2","digital_ec2"]
}

track_tag = {
    Name = element(var.track_tag,count.index)
}
```
### If count.index is set to 2, which of the following values will be assigned to the name attribute of track_tag variable?

integration_ec2

data_ec2

digital_ec2

track_tag

### 14. What allows you to conveniently switch between multiple instances of a single configuration within its single backend?

local backends

workspaces

remote backends

providers

### 15. A single terraform resource file that defines an aws_instance resource can simply be renamed to vsphere_virtual_machine in order to switch cloud providers.

TRUE

FALSE

### 16. You have multiple developers working on a terraform project (using terraform OSS), and have saved the terraform state in a remote S3 bucket . However ,team is  intermittently experiencing  inconsistencies in the provisioned infrastructure / failure in the code . You have traced this problem to simultaneous/concurrent runs of terraform apply command for 2/more developers . What can you do to fix this problem ?

Structure your team in such way that only one individual will run terraform apply, everyone will just make changes and share with him. Then there will be no change of any inonsistencies

Stop using remote state, and store the developer tfstate in their own machine. Once a day all developers should sit together and merge the state files manually.

Use terraform workspaces feature, this will fix the problem by default, as every developer will have their own state file and terraform will merge them on server side.

Enable terraform state locking for the S3 backend using DynamoDB table. This prevents other from acquiring the lock and potentially corrupting your state.

### 17. When using Terraform in a team it is important for everyone to be working with the same state so that operations will be applied to the same remote objects. Which of the below option is a recommended solution for this? 

workspace

remote backend

use the cached state and treat this as the record of truth

module

### 18. Which of the following Terraform files should be ignored by Git when committing code to a repo? (select Three)

terraform.tfstate

input.tf

output.tf

any files with names ending in .auto.tfvars or .auto.tfvars.json

fines named exactly terraform.tfvars or terraform.tfvars.json

### 19. Which of the below commands will rename a EC2 instance in your state file without destroying and recreating it ? 

terraform plan

terraform mv

terraform plan mv

terraform state mv

### 20. Workspaces in Terraform provides similar functionality in the open-source, Terraform Cloud, and Enterprise versions of Terraform.

TRUE

FALSE
