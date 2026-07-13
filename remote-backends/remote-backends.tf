#s3
#s3 bucket to handle state lock
resource "aws_s3_bucket" "my_bucket" {

  bucket = "state-lock-remote-bucket"
   tags = {
    Name        = "state-lock-remote-bucket"
  }
}

#dynamoDB

resource "aws_dynamodb_table" "remote-dynamodb-table" {
  name           = "state-lock-remote-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}