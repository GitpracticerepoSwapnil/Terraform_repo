resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"
   tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "firstsub" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.0.0/24"
   tags = {
    Name = "subnet1"
   } 
}

resource "aws_subnet" "secondsub" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.1.0/24"
    tags = {
    Name = "subnet2"
   }
}

resource "aws_subnet" "Third" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.2.0/24"
    tags = {
    Name = "subnet3"
   }

}

resource "aws_subnet" "fourthsub" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.3.0/24"
    tags = {
    Name = "subnet4"
   }
}

resource "aws_subnet" "fivsub" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.4.0/24"
    tags = {
    Name = "subnet5"
   }

}

resource "aws_subnet" "sixsub" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.5.0/24"
    tags = {
    Name = "subnet6"
   }

}