terraform {
  # cloud {
  #   organization = "adriano-org"

  #   workspaces {
  #     name = "devops-aws-myapp-dev"
  #   }
  # }
}



# provider "aws" {
#   region = "us-east-1"
  
# }

provider "aws" {
  region     = "us-east-1"
 
}

terraform {
  backend "s3" {
    bucket = "bkt01042025"
    key    = "terraform/first-ec2-cloud"
    region = "us-east-1"
  }
}