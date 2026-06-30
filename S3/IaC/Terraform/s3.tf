resource "aws_s3_bucket" "terraform-s2bucket" {

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
