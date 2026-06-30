# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "VPC" {
  source   = "./VPC"
  for_each = var.regions

  inputs = {
    project      = var.project_id
    environment  = var.environment
    region       = each.value
    network_name = "stacks-${var.environment}-${each.value}"
  }

  providers = {
    google = provider.google.this[each.value]
  }
}

