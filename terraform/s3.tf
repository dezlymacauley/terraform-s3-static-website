resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "static_website_s3_bucket" {

  tags = {
    name = "${local.project_name}: static_website_s3_bucket"
  }

  // I used hyphens in the name because colons are not allowed in an s3 bucket name.
  bucket = format(
    "%s-static-website-s3-bucket-%s",
    local.project_name,
    random_id.bucket_suffix.hex
  )

}
