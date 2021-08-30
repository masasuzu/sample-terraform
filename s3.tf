resource "aws_s3_bucket" "main" {
  bucket = "masasuzu.net"
  acl    = "private"

  tags = {
    Name        = "masasuzu.net"
    Environment = "Dev"
    SomeTag     = "hogehoge"
  }
}
