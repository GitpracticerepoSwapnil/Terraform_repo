variable "region" {
    type = object({
        region = string
        cidr_block = string
    })

}

variable "subnet" {
  type = object({
    Name = list(string)
  })
}