# terraform-alicloud-simple-application-server
Terraform Module for creating Simple Application Server on Alibaba Cloud.

These types of resources are supported:

* [alicloud_simple_application_server_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_instance)
* [alicloud_simple_application_server_snapshot](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_snapshot)
* [alicloud_simple_application_server_custom_image](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/simple_application_server_custom_image)


## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Asimple-application-server&spm=docs.m.terraform-alicloud-modules.simple-application-server&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
module "example" {
  source          = "terraform-alicloud-modules/simple-application-server/alicloud"
  create_instance = true
  payment_type    = "Subscription"
  instance_name   = "your_instance_name"
  period          = 1
  image_id        = "yoru_image_id"
  plan_id         = "your_plan_id"
  data_disk_size  = 100
  password        = "your_password"

  create_snapshot = true
  disk_id         = "your_disk_id"
  snapshot_name   = "your_snapshot_name"

  create_image       = true
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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
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
