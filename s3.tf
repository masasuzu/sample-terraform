resource "aws_s3_bucket" "main" {
  bucket = "sample-s3-bucket-sugoiyatsu"
  acl    = "private"

  tags = {
    Name        = "sample-s3-bucket-sugoiyatsu"
    Environment = "Dev"
    SomeTag     = "hogehoge"
  }
}
