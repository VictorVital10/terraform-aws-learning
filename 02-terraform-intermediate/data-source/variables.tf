variable "env" {}

variable "aws_region" {
    type = string
    description = ""
  default = "sa-east-1"
}

variable "instance_type" {
  type = object({
    dev = string
    prod = string 
  })
  description = ""
  default = {
    dev = "t3.micro"
    prod = "t3.medium"
  }
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0bddb58ec42d165f9"
}

variable "instance_number" {
  type = object({
    dev = number
    prod = number 
  })

  description = "Number of instances to create"
  default = {
    dev = 1
    prod = 3
  }

}
