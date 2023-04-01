# Provider
provider "aws" {
  region = "us-east-1"
}

# Resource - Banco de Dados RDS Mysql
resource "aws_db_instance" "mysql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "myuser"
  password             = "mypassword"
}

# Resource - ECR
resource "aws_ecr_repository" "my_repo" {
  name = "my_repo"
}

# Resource - ECS
resource "aws_ecs_cluster" "my_cluster" {
  name = "my_cluster"
}

# Resource - API Gateway
resource "aws_api_gateway_rest_api" "my_api" {
  name        = "my_api"
  description = "My API Gateway REST API"
}

# Resource - S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my_bucket"
}