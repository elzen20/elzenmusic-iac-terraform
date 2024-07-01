terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "google" {
  project = var.elzenmusic-project
  region  = var.us_central
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}
