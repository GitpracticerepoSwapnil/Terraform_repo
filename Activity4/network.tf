resource "aws_vpc" "new_vpc" {
  cidr_block = var.region.cidr_block
    tags = {
      "Name" = "My VPC"
    }
}

resource "aws_subnet" "subnet1" {
vpc_id = aws_vpc.new_vpc.id
count = length(var.subnet.Name)
cidr_block = cidrsubnet(var.region.cidr_block,8,count.index)
#var.subnet.cidr_block[count.index]
tags = {
    name = var.subnet.Name[count.index]
}

}