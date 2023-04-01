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

# Resource - ECR#
resource "aws_ecr_repository" "hackaton_repo" {
  name = "hackaton_repo"
}

# Resource - ECS
resource "aws_ecs_cluster" "hackaton_cluster" {
  name = "hackaton_cluster"
}

# Resource - API Gateway
resource "aws_api_gateway_rest_api" "hackaton_api" {
  name        = "hackaton_api"
  description = "My API Gateway REST API"
}

# Resource - S3
resource "aws_s3_bucket" "hackaton-bucket-12345" {
  bucket = "hackaton-bucket-12345"
}