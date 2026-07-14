#s3
resource "aws_s3_bucket" "remote_s3_bucket" {
  bucket = "state-lock-remote-bucket"

  tags = {
    Name = "state-lock-remote-bucket"
  }
}


#dynamoDB
resource "aws_dynamodb_table" "remote_dynamoDB_table" {
  name         = "state-lock-remote-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"


  attribute {
    name = "LockID"
    type = "S"
  }
}