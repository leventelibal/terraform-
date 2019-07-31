resource "aws_s3_bucket" "b" {
  bucket = "levent-bucket"
  acl    = "private"

tags = {
        name = "dev"
        dept = "it"
        group = "april"
        created_by = "levent"
  }
}