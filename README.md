

_______________________________________________________________________________

## Technologies used in this project
1. mise
2. Bash Scripting
3. Docker
4. Floci
5. eza

6. Terraform 
7. AWS
    - S3
_______________________________________________________________________________

## Requirements:
- mise
- systemctl
- docker

Everything else required to run this project will be installed by `mise`
_______________________________________________________________________________

## Mise Usage Guide

Ensure that the bash scripts in the `.mise-tasks` directory are executable.
```bash
chmod u+x .mise-tasks/*bash
```
_______________________________________________________________________________

Give mise permission to read the `mise.toml` file
```bash
mise trust
```
_______________________________________________________________________________

## Usage Guide
_______________________________________________________________________________

To view the structure of the project
```bash
view-structure
```
_______________________________________________________________________________

Activate the Docker daemon
```bash
toggle-docker
```
_______________________________________________________________________________

Start the Local AWS emulator
```bash
start-local-aws
```
_______________________________________________________________________________

Stop the Local AWS emulator
```bash
stop-local-aws
```
_______________________________________________________________________________

## Terraform Usage Guide
_______________________________________________________________________________

Enter the `terraform` directory
```bash
cd terraform
```
_______________________________________________________________________________

Initialize terraform
```bash
terraform init
```

#### Note:
- This command will take some time because it needs to download 
the providers for this project. Think of providers as plugins for Terraform.
_______________________________________________________________________________

Check that this structure can be created
```bash
terraform plan
```
_______________________________________________________________________________

Create the infastructure 
```bash
terraform apply -auto-approve
```
_______________________________________________________________________________

To view the name of the `s3 bucket` run this command

```bash
aws s3 ls
```

You'll get an output like this
```
2026-10-24 17:20:57 terraform-s3-static-website-static-website-s3-bucket-8b916f8c
```
_______________________________________________________________________________

To view the home page (`index.html`), open this in the browser
```bash
http://s3.localhost.localstack.cloud:4566/terraform-s3-static-website-static-website-s3-bucket-8b916f8c/index.html
```
_______________________________________________________________________________

To view the error page (`error.html`), open this in the browser
```bash
http://s3.localhost.localstack.cloud:4566/terraform-s3-static-website-static-website-s3-bucket-8b916f8c/error.html
```
_______________________________________________________________________________
