# This is the aws provider
provider "aws" {
 	region = "ap-south-1"
}


# This is the s3 bucket resource
resource "aws_s3_bucket" "SwapnilQtdevops"  {
    bucket = "qttft12"
    tags = {
            Name        = "bucket_from_tf"
            Environment = "Dev1"
    }
}
