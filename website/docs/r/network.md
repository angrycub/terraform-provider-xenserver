---
title: "xenserver_network"
---

Provides a XenServer network resource.

## Example Usage

```hcl
resource "xenserver_network" "demo" {
  name_label = "Demo"
  description = "Demo network from Terraform"
  bridge = ""
  other_config {
    automatic = "false"
  }
}
```
