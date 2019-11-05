---
layout: "xenserver"
page_title: "XenServer: xenserver_pifs"
sidebar_current: "docs-xenserver-datasource-pifs"
description: |-
  Provides information about the physical network interfaces (PIF) of a XenServer host.
---

# xenserver\_pifs

Provides information about the physical network interfaces (PIF) of a XenServer host.

## Example Usage

```hcl
data "xenserver_pifs" "interfaces" {
}
```
