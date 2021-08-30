resource "aws_s3_bucket" "main" {
  bucket = "sample-s3-bucket-sugoiyatsu"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
    id      = "delete_rule"

    expiration {
      days = 3
    }

    noncurrent_version_expiration {
      days = 3
    }
  }

  tags = {
    Name        = "sample-s3-bucket-sugoiyatsu"
    Environment = "Dev"
    SomeTag     = "hogehoge"
    SugoiTag    = "ChoSugoi"
  }
}
