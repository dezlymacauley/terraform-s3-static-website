# Terraform S3 Static Website
_______________________________________________________________________________

## Requirements:
- mise
- docker

Everything else required to run this project is in the `mise.toml` file
_______________________________________________________________________________

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

Ensure that you have Docker running
```bash
floci aws doctor 
```
_______________________________________________________________________________


_______________________________________________________________________________

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

```bash
eval $(floci env)
```
_______________________________________________________________________________

Stop Floci (AWS emulator)
```bash
floci stop 
```
_______________________________________________________________________________
