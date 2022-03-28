variable "instance_name" {
  type        = string
  description = "The name of the simple application server."
  default     = "tf-testacc"
}

variable "data_disk_size" {
  type        = number
  description = "The size of the data disk. Unit: GB. Valid values: 0 to 16380."
  default     = 100
}

variable "password" {
  type        = string
  description = "The password of the simple application server. "
  default     = "Test123!"
}

variable "snapshot_name" {
  type        = string
  description = " The name of the snapshot. The name must be 2 to 50 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-)."
  default     = "snapshot_name"
}

variable "custom_image_name" {
  type        = string
  description = "The name of the resource. The name must be 2 to 128 characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-)."
  default     = "image_name"
}


variable "image_status" {
  type        = string
  description = "The Shared status of the Custom Image. Valid values: Share, UnShare."
  default     = "UnShare"
}