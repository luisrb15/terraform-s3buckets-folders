provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "data_bucket" {
  bucket_prefix = var.data_bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}

resource "aws_s3_bucket" "saved_queries_bucket" {
  bucket_prefix = var.saved_queries_bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}

resource "aws_s3_bucket_object" "data_folder" {
  bucket = aws_s3_bucket.data_bucket.id
  acl = var.acl
  key = var.data_folder_key
}

resource "aws_s3_bucket_object" "saved_queries_folder" {
  bucket = aws_s3_bucket.saved_queries_bucket.id
  acl = var.acl
  key = var.saved_queries_folder_key
}