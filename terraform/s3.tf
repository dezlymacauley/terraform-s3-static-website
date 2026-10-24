resource "random_id" "bucket_suffix" {
  byte_length = 4
}

// This creates the `s3 bucket`
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

// This enables the `s3 bucket` to be publically accessible.
// By default AWS makes `s3 buckets` private
resource "aws_s3_bucket_public_access_block" "static_website_s3_bucket" {
  bucket                  = aws_s3_bucket.static_website_s3_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


// Allows everyone to read objects in the bucket.
resource "aws_s3_bucket_policy" "s3_bucket_read_only_policy" {
  bucket = aws_s3_bucket.static_website_s3_bucket.id

  // `jsonencode` allows you to write an AWS policy in HCL 
  // and then it will it will convert to JSON
  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"

        Resource = "${aws_s3_bucket.static_website_s3_bucket.arn}/*"
      }
    ]
  })
}
