module "infra" {
  source       = "./dev"
  vpc_id       = "vpc-0443ff7c"
  subnetcidr1  = "172.31.64.0/20"
  subnetcidr2  = "172.31.80.0/20"
  region       = "us-west-2"
  sgname       = "test_sg_1"
  elbname      = "test-elb"
  subnetname1  = "subnet_1"
  subnetname2  = "subnet_2"
  instancename = "test_ec2"
  ec2type      = "t2.micro"
  bucketname   = "test_bucket"
}

