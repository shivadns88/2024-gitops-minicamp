terraform {
  required_version = "~> 1.9.5"
  backend "s3" {
    bucket         = "shivadns-gitops-terraform-backend"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "shivadns-GitopsTerraformLocks"
  }
}