variable "ec2_instance_name" {

  description = "this variable contains ec2 instance name"
  default     = "terra-automate-server"
  type        = string

}


variable "ec2_instance_state" {

  description = "this variable contains ec2 instance state"
  default     = "running"
  type        = string

}


variable "ec2_instance_volume_size" {

  description = "this variable contains ec2 instance volume size"
  default     = 10
  type        = number

}