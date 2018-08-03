---
title: "xenserver_sr"
---

Provides information about the storage repositories (SRs) of a XenServer host.

## Example Usage

```hcl
data "xenserver_sr" "local-storage" {
  name_label = "Local storage"
}

resource "xenserver_vdi" "demo-vdi" {
  sr_uuid = "${data.xenserver_sr.local-storage.id}"
  name_label = "Demo"
  size = 536870912000
}
```
