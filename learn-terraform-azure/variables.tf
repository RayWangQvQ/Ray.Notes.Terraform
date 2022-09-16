# 真实的变量，建议存储在terraform.tfvars内，该文件下只存储默认值

variable "mySubId" {
  type        = string
  description = "My sub id"
}

variable "defaultLocation" {
  type        = string
  description = "Default location"
  default     = "China North 3" # or chinanorth3
}