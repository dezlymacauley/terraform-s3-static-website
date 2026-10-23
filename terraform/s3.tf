resource "aws_s3_bucket" "static_website_s3_bucket" {

  tags = {
    name = "${local.project_name}: static_website_s3_bucket"
  }

}
