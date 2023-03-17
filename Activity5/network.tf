resource "aws_vpc" "myVPC" {
    count = length(var.vpcd.Name)
    cidr_block = var.vpcd.cidr_block[count.index]
    tags = {
      "Name" = var.vpcd.Name[count.index]
    }
}

resource "aws_subnet" "mysub1" {
  vpc_id = aws_vpc.myVPC[0].id 
  count = length(var.Subnet.Name)
 cidr_block = cidrsubnet(var.vpcd.cidr_block[0],8,count.index)
 tags = {
   "Name" = var.Subnet.Name[count.index]
 }
 depends_on = [
   aws_vpc.myVPC
 ]
}

resource "aws_subnet" "mysub" {
  vpc_id = aws_vpc.myVPC[1].id
  count = length(var.Subnet.Name)
 cidr_block = cidrsubnet(var.vpcd.cidr_block[1],8,count.index)
 tags = {
   "Name" = var.Subnet.Name[count.index]
 }
  depends_on = [
   aws_vpc.myVPC
 ]
}