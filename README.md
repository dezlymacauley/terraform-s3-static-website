# Terraform S3 Static Website
_______________________________________________________________________________

## Requirements:
- mise
- systemctl
- docker

Everything else required to run this project is in the `mise.toml` file
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

## Docker Usage Guide

Activate the Docker daemon
```bash
docker-toggle
```
_______________________________________________________________________________

## Floci Usage Guide

Check the status of the Floci AWS emulator
```bash
floci aws status
```
_______________________________________________________________________________

Start Floci AWS emulator
```bash
floci aws start
```
_______________________________________________________________________________

Stop Floci (AWS emulator)
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
