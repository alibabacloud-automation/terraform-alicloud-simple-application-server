provider "alicloud" {
  region = "cn-hangzhou"
}
resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

data "alicloud_simple_application_server_images" "default" {
  platform = "Linux"
}

data "alicloud_simple_application_server_plans" "default" {
  platform = "Linux"
}

data "alicloud_simple_application_server_disks" "default" {
  instance_id = module.sas.instance_id
}

module "sas" {
  source = "../.."
  #  alicloud_simple_application_server_instance
  create_instance = true
  payment_type    = "Subscription"
  instance_name   = "${var.instance_name}-${random_integer.rand.result}"
  period          = 1
  image_id        = data.alicloud_simple_application_server_images.default.images.0.id
  plan_id         = data.alicloud_simple_application_server_plans.default.plans.0.id
  data_disk_size  = var.data_disk_size
  password        = var.password

  #  alicloud_simple_application_server_snapshot
  create_snapshot = true
  disk_id         = data.alicloud_simple_application_server_disks.default.ids.0
  snapshot_name   = "${var.snapshot_name}-${random_integer.rand.result}"
}

