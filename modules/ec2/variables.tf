variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "webserver"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the instance"
  type        = string
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 20
} 