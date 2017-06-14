# Terraform provider for XenServer

<!--
[![GitHub release](http://img.shields.io/github/release/meltwater/terraform-provider-xenserver.svg)](https://github.com/meltwater/terraform-provider-xenserver/releases)
[![Travis CI](https://img.shields.io/travis/meltwater/terraform-provider-xenserver/master.svg)](https://travis-ci.org/meltwater/terraform-provider-xenserver)
-->

<div style="border: 2px solid #AAF; padding:10px; border-radius:5px; background-color: #EEF ">
This has been updated to work with Terraform v.0.9.8
</div>

## Usage

### Provider Configuration

Download and place the `terraform-provider-xenserver` binary into your $PATH

```
provider "xenserver" {
    url = "${var.xenserver_url}"
    username = "${var.xenserver_username}"
    password = "${var.xenserver_password}"
}
```

The following arguments are supported.

* `url` - (Required) The URL to the XenAPI endpoint, typically "https://<XenServer Management IP>"
* `username` - (Required) The username to use to authenticate to XenServer.
* `password` - (Required) The password to use to authenticate to XenServer.

### Resource Configuration

#### `xenserver_vm`

```
resource "xenserver_vm" "myvm" {
    name_label = "My VM"
    base_template_name = "centos-7-large"
    xenstore_data {
        hostname = "myvm.example.com"
        ip = "192.168.1.20"
    }
}
```

The following arguments are supported.

* `name_label` - (Required) Name of VM.
* `base_template_name` - (Required) Name VM template to instantiate.
* `xenstore_data` - (Optional) Configuration made available inside the VM as "vm-data/key=value" using the xenstore-read utility.
