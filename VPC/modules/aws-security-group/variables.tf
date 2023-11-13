variable "sg_name" {
  description = "sg name"
  type        = string
  default     = " "
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = " "
}

variable "sg_description" {
  description = "sg description"
  type        = string
  default     = " "
}

variable "ingress_source_port" {
  description = "souce port for ingress rule"
  type        = number
  default     = 22
}

variable "ingress_destination_port" {
  description = "destination port for ingress rule"
  type        = number
  default     = 22
}

variable "ingress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "ingress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "egress_source_port" {
  description = "souce port for ingress rule"
  type        = number
  default     = 0
}

variable "egress_destination_port" {
  description = "destination port for ingress rule"
  type        = number
  default     = 0
}

variable "egress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "egress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}


