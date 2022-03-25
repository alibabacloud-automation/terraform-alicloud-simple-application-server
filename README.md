# terraform-alicloud-simple-application-server
Terraform Module for creating Simple Application Server on Alibaba Cloud.


These types of resources are supported:

* [alicloud_simple_application_server_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_instance)
* [alicloud_simple_application_server_snapshot](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_snapshot)
* [alicloud_simple_application_server_custom_image](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_custom_image)


## Usage

```hcl
module "example" {
  source         = "terraform-alicloud-modules/simple-application-server/alicloud"
  payment_type   = "Subscription"
  instance_name  = "your_instance_name"
  period         = 1
  image_id       = "yoru_image_id"
  plan_id        = "your_plan_id"
  data_disk_size = 100
  password       = "your_password"

  disk_id       = "your_disk_id"
  snapshot_name = "your_snapshot_name"

  custom_image_name  = "your_custom_image_name"
  system_snapshot_id = "your_system_snapshot_id"
  image_status       = "your_image_status"
  description        = "your_description"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-simple-application-server/tree/master/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.143.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
