variable "create_instance" {
  type        = bool
  description = "Whether to create a new simple application server instance."
  default     = false
}

variable "create_snapshot" {
  type        = bool
  description = "Whether to create a new simple application server snapshot."
  default     = false
}

variable "create_image" {
  type        = bool
  description = "Whether to create a new simple application server custom image."
  default     = false
}

variable "instance_id" {
  type        = string
  description = "An existing simple application server instance id. It will be ignored when create_instance = true"
  default     = ""
}

variable "system_snapshot_id" {
  type        = string
  description = "An existing simple application server instance id. It will be ignored when create_snapshot = true"
  default     = ""
}

#alicloud_simple_application_server_instance
variable "auto_renew" {
  type        = bool
  description = "Specifies whether to enable auto-renewal. Unit: months. Valid values: true and false."
  default     = false
}
variable "auto_renew_period" {
  type        = number
  description = "The auto renew period. Valid values: 1,3, 6, 12, 24, 36. NOTE: The attribute auto_renew is valid when the attribute is true."
  default     = null
}
variable "data_disk_size" {
  type        = number
  description = "The size of the data disk. Unit: GB. Valid values: 0 to 16380."
  default     = null
}

variable "instance_name" {
  type        = string
  description = "The name of the simple application server."
  default     = null
}

variable "password" {
  type        = string
  description = "The password of the simple application server. "
  default     = null
}

variable "payment_type" {
  type        = string
  description = "The payment type of the resource. Valid values: Subscription."
  default     = "Subscription"
}

variable "period" {
  type        = number
  description = "The period. Unit: months. Valid values: 1,3, 6, 12, 24, 36."
  default     = 1
}

variable "plan_id" {
  type        = string
  description = "The ID of the plan. You can use the alicloud_simple_application_server_plans to query all the plans provided by Simple Application Server in the specified region."
  default     = null
}

variable "instance_status" {
  type        = string
  description = "The status of the simple application server. Valid values: Resetting, Running, Stopped."
  default     = "Running"
}

variable "image_id" {
  type        = string
  description = "The ID of the image. You can use the alicloud_simple_application_server_images to query the available images in the specified region. The value must be an integral multiple of 20."
  default     = null
}

#alicloud_simple_application_server_snapshot
variable "disk_id" {
  type        = string
  description = "The ID of the disk."
  default     = null
}

variable "snapshot_name" {
  type        = string
  description = " The name of the snapshot. The name must be 2 to 50 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-)."
  default     = null
}

#alicloud_simple_application_server_custom_image
variable "custom_image_name" {
  type        = string
  description = "The name of a new custom image."
  default     = null
}
variable "description" {
  type        = string
  description = "The description of the Custom Image."
  default     = null
}

variable "image_status" {
  type        = string
  description = "The Shared status of the Custom Image. Valid values: Share, UnShare."
  default     = "UnShare"
}