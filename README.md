# Terraform S3 Static Website
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

Activate the Docker daemon
```bash
docker-toggle
```
_______________________________________________________________________________

Start the Local AWS emulator
```bash
local-aws-start
```
_______________________________________________________________________________

Stop the Local AWS emulator
```bash
floci stop 
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
