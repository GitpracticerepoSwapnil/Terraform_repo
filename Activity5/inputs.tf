variable "region" {
type = string

}

variable "vpcd" {
  type = object({
   cidr_block = list(string)
   Name = list(string)
  })
  
}

variable "Subnet" {
    type = object({
        Name = list(string)
    })
}