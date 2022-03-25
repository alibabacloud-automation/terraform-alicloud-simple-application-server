locals {
  instance_id        = var.instance_id != "" ? var.instance_id : concat(alicloud_simple_application_server_instance.instance.*.id, [""])[0]
  system_snapshot_id = var.system_snapshot_id != "" ? var.system_snapshot_id : concat(alicloud_simple_application_server_snapshot.snapshot.*.id, [""])[0]
}

resource "alicloud_simple_application_server_instance" "instance" {
  count             = var.create_instance ? 1 : 0
  auto_renew        = var.auto_renew
  auto_renew_period = var.auto_renew_period
  data_disk_size    = var.data_disk_size
  image_id          = var.image_id
  instance_name     = var.instance_name
  password          = var.password
  payment_type      = var.payment_type
  period            = var.period
  plan_id           = var.plan_id
  status            = var.instance_status
}

resource "alicloud_simple_application_server_snapshot" "snapshot" {
  count         = var.create_snapshot ? 1 : 0
  disk_id       = var.disk_id
  snapshot_name = var.snapshot_name
}


resource "alicloud_simple_application_server_custom_image" "image" {
  count              = var.create_image ? 1 : 0
  custom_image_name  = var.custom_image_name
  description        = var.description
  instance_id        = local.instance_id
  system_snapshot_id = local.system_snapshot_id
  status             = var.image_status
}