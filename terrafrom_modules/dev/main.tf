module "sampl" {
  source        = "../modules"
  instance_type = "t2.micro"
  ec2_tag       = "HelloWorld"
}


module "samp2" {
  source        = "../modules"
  instance_type = "t3.micro"
  ec2_tag       = "test"
}
