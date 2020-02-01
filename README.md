This Terraform code is for test purpose

To do the deployment in DEV environment

module "infra" {
  source       = "./dev"
  vpc_id       = "vpc-id"
  subnetcidr1  = "172.31.64.0/20"
  subnetcidr2  = "172.31.80.0/20"
  region       = "us-west-2"
  sgname       = "dev-test_sg_1"
  elbname      = "dev-test-elb"
  subnetname1  = "devsubnet_1"
  subnetname2  = "dev-subnet_2"
  instancename = "dev-test_ec2"
  ec2type      = "t2.micro"
  bucketname   = "dev-test_bucket"
}

To do the deployment in STAGE environment

module "infra" {
  source       = "./stage"
  vpc_id       = "vpc-id"
  subnetcidr1  = "172.31.64.0/20"
  subnetcidr2  = "172.31.80.0/20"
  region       = "us-west-2"
  sgname       = "stage-test_sg_1"
  elbname      = "stage-test-elb"
  subnetname1  = "stage-subnet_1"
  subnetname2  = "stage-subnet_2"
  instancename = "stage-test_ec2"
  ec2type      = "t2.micro"
  bucketname   = "stage-test_bucket"
}

To do the deployment in PROD environment

module "infra" {
  source       = "./prod"
  vpc_id       = "vpc-id"
  subnetcidr1  = "172.31.64.0/20"
  subnetcidr2  = "172.31.80.0/20"
  region       = "us-west-2"
  sgname       = "prod-test_sg_1"
  elbname      = "prod-test-elb"
  subnetname1  = "prod-subnet_1"
  subnetname2  = "prod-subnet_2"
  instancename = "prod-test_ec2"
  ec2type      = "t2.micro"
  bucketname   = "prod-test_bucket"
}
