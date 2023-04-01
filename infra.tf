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
  name                 = "hackaton"
  username             = "user"
  password             = "password"
}

# Resource - ECR
resource "aws_ecr_repository" "my_repo" {
  name = "hackaton_repo"
}

# Resource - ECS
resource "aws_ecs_cluster" "my_cluster" {
  name = "hackaton_cluster"
}

# Resource - API Gateway
resource "aws_api_gateway_rest_api" "my_api" {
  name        = "hckaton_api"
  description = "My API Gateway REST API"
}

# Resource - S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "hackaton_bucket"
}