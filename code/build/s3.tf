provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "df6da007-09a1-4ffd-b450-e2554a853c8a"
    git_commit           = "aa6f470a147de7eb8116b7cd852e4e0e6a158a9a"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-12 06:12:55"
    git_last_modified_by = "chenian@yahoo.com"
    git_modifiers        = "chenian"
    git_org              = "chenian1"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
