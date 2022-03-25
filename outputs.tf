output "instance_id" {
  description = "The Instance ID"
  value       = concat(alicloud_simple_application_server_instance.instance.*.id, [""])[0]
}

output "instance_name" {
  description = "The Instance ID"
  value       = concat(alicloud_simple_application_server_instance.instance.*.instance_name, [""])[0]
}



output "system_snapshot_id" {
  description = "The System Snapshot ID"
  value       = concat(alicloud_simple_application_server_snapshot.snapshot.*.id, [""])[0]
}

output "image_id" {
  description = "The Image ID"
  value       = concat(alicloud_simple_application_server_custom_image.image.*.id, [""])[0]
}

output "custom_image_name" {
  description = "The Image Name"
  value       = concat(alicloud_simple_application_server_custom_image.image.*.custom_image_name, [""])[0]
}

