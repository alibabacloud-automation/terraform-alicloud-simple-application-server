output "instance_id" {
  description = "The simple application server instance id."
  value       = local.instance_id
}

output "system_snapshot_id" {
  description = "The simple application server snapshot id."
  value       = local.system_snapshot_id
}

output "custom_image_id" {
  description = "The simple application server image id."
  value       = concat(alicloud_simple_application_server_custom_image.image.*.id, [""])[0]
}
