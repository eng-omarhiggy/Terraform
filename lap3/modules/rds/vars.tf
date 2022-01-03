variable "db_storage" {
  type = number
}
variable "db_engine" {
  type = string
}
variable "egine_version" {
  type = string
}
variable "instance_class" {
  type = string
}
variable "db_name" {
  type = string
}
variable "db_user_name" {
  type = string
}
variable "db_pass_word" {
  type = string
}

variable "prams_group_name" {
  type = string
}
variable "az" {
  type = set(string)
  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}
variable "sub_group" {
  type = string
}