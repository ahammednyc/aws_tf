module "sampl" {
  source        = "../modules"
  instance_type = "t3.micro"
  ec2_tag       = "HelloWorld"
}


module "samp2" {
  source        = "../modules"
  instance_type = "t3.micro"
  ec2_tag       = "test"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-521409"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}