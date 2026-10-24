terraform {

  required_version = "~> 1.17.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.70.0"
    }

    random = {
      source = "hashicorp/random"
      version = "~> 3.9.1"
    }

  }

}

provider "aws" {

  default_tags {
    tags = {
      managed_by   = "terraform"
      project_name = "${local.project_name}"
    }
  }
}
