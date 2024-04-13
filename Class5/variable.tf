variable region {
  type        = string

  description = "provide region"
}
variable vpc_cidr {
  type        = string
  description = "provide vpc block"
}

variable subnet1_cidr {
  type        = string
  description = "provide subnet1 block"
}
variable subnet2_cidr {
  type        = string
  description = "provide subnet2 block"
}
variable subnet3_cidr {
  type        = string
  description = "provide subnet3 block"
}

variable ip_on_lunch {
  type        = bool
 
}
variable instance_type {
  type        = string
  default     = ""
  description = "description"
}

