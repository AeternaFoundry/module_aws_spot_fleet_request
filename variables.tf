variable "spot_fleet_requests" {
  description = <<EOT
Map of spot_fleet_requests, attributes below
Required:
    - iam_fleet_role
    - target_capacity
Optional:
    - allocation_strategy
    - context
    - excess_capacity_termination_policy
    - fleet_type
    - instance_interruption_behaviour
    - instance_pools_to_use_count
    - load_balancers
    - on_demand_allocation_strategy
    - on_demand_max_total_price
    - on_demand_target_capacity
    - region
    - replace_unhealthy_instances
    - spot_price
    - tags
    - tags_all
    - target_capacity_unit_type
    - target_group_arns
    - terminate_instances_on_delete
    - terminate_instances_with_expiration
    - valid_from
    - valid_until
    - wait_for_fulfillment
    - launch_specification (block):
        - ami (required)
        - associate_public_ip_address (optional)
        - availability_zone (optional)
        - ebs_block_device (optional, block):
            - delete_on_termination (optional)
            - device_name (required)
            - encrypted (optional)
            - iops (optional)
            - kms_key_id (optional)
            - snapshot_id (optional)
            - throughput (optional)
            - volume_size (optional)
            - volume_type (optional)
        - ebs_optimized (optional)
        - ephemeral_block_device (optional, block):
            - device_name (required)
            - virtual_name (required)
        - iam_instance_profile (optional)
        - iam_instance_profile_arn (optional)
        - instance_type (required)
        - key_name (optional)
        - monitoring (optional)
        - placement_group (optional)
        - placement_tenancy (optional)
        - root_block_device (optional, block):
            - delete_on_termination (optional)
            - encrypted (optional)
            - iops (optional)
            - kms_key_id (optional)
            - throughput (optional)
            - volume_size (optional)
            - volume_type (optional)
        - spot_price (optional)
        - subnet_id (optional)
        - tags (optional)
        - user_data (optional)
        - vpc_security_group_ids (optional)
        - weighted_capacity (optional)
    - launch_template_config (block):
        - launch_template_specification (required, block):
            - id (optional)
            - name (optional)
            - version (optional)
        - overrides (optional, block):
            - availability_zone (optional)
            - instance_requirements (optional, block):
                - accelerator_count (optional, block):
                    - max (optional)
                    - min (optional)
                - accelerator_manufacturers (optional)
                - accelerator_names (optional)
                - accelerator_total_memory_mib (optional, block):
                    - max (optional)
                    - min (optional)
                - accelerator_types (optional)
                - allowed_instance_types (optional)
                - bare_metal (optional)
                - baseline_ebs_bandwidth_mbps (optional, block):
                    - max (optional)
                    - min (optional)
                - burstable_performance (optional)
                - cpu_manufacturers (optional)
                - excluded_instance_types (optional)
                - instance_generations (optional)
                - local_storage (optional)
                - local_storage_types (optional)
                - memory_gib_per_vcpu (optional, block):
                    - max (optional)
                    - min (optional)
                - memory_mib (optional, block):
                    - max (optional)
                    - min (optional)
                - network_bandwidth_gbps (optional, block):
                    - max (optional)
                    - min (optional)
                - network_interface_count (optional, block):
                    - max (optional)
                    - min (optional)
                - on_demand_max_price_percentage_over_lowest_price (optional)
                - require_hibernate_support (optional)
                - spot_max_price_percentage_over_lowest_price (optional)
                - total_local_storage_gb (optional, block):
                    - max (optional)
                    - min (optional)
                - vcpu_count (optional, block):
                    - max (optional)
                    - min (optional)
            - instance_type (optional)
            - priority (optional)
            - spot_price (optional)
            - subnet_id (optional)
            - weighted_capacity (optional)
    - spot_maintenance_strategies (block):
        - capacity_rebalance (optional, block):
            - replacement_strategy (optional)
EOT

  type = map(object({
    iam_fleet_role                      = string
    target_capacity                     = number
    valid_from                          = optional(string)
    terminate_instances_with_expiration = optional(bool)
    terminate_instances_on_delete       = optional(string)
    target_group_arns                   = optional(set(string))
    target_capacity_unit_type           = optional(string)
    tags_all                            = optional(map(string))
    tags                                = optional(map(string))
    spot_price                          = optional(string)
    replace_unhealthy_instances         = optional(bool)
    region                              = optional(string)
    on_demand_target_capacity           = optional(number)
    on_demand_max_total_price           = optional(string)
    on_demand_allocation_strategy       = optional(string)
    load_balancers                      = optional(set(string))
    instance_pools_to_use_count         = optional(number)
    instance_interruption_behaviour     = optional(string)
    fleet_type                          = optional(string)
    excess_capacity_termination_policy  = optional(string)
    context                             = optional(string)
    allocation_strategy                 = optional(string)
    valid_until                         = optional(string)
    wait_for_fulfillment                = optional(bool)
    launch_specification = optional(list(object({
      ami                         = string
      associate_public_ip_address = optional(bool)
      availability_zone           = optional(string)
      ebs_block_device = optional(list(object({
        delete_on_termination = optional(bool)
        device_name           = string
        encrypted             = optional(bool)
        iops                  = optional(number)
        kms_key_id            = optional(string)
        snapshot_id           = optional(string)
        throughput            = optional(number)
        volume_size           = optional(number)
        volume_type           = optional(string)
      })))
      ebs_optimized = optional(bool)
      ephemeral_block_device = optional(list(object({
        device_name  = string
        virtual_name = string
      })))
      iam_instance_profile     = optional(string)
      iam_instance_profile_arn = optional(string)
      instance_type            = string
      key_name                 = optional(string)
      monitoring               = optional(bool)
      placement_group          = optional(string)
      placement_tenancy        = optional(string)
      root_block_device = optional(list(object({
        delete_on_termination = optional(bool)
        encrypted             = optional(bool)
        iops                  = optional(number)
        kms_key_id            = optional(string)
        throughput            = optional(number)
        volume_size           = optional(number)
        volume_type           = optional(string)
      })))
      spot_price             = optional(string)
      subnet_id              = optional(string)
      tags                   = optional(map(string))
      user_data              = optional(string)
      vpc_security_group_ids = optional(set(string))
      weighted_capacity      = optional(string)
    })))
    launch_template_config = optional(list(object({
      launch_template_specification = object({
        id      = optional(string)
        name    = optional(string)
        version = optional(string)
      })
      overrides = optional(list(object({
        availability_zone = optional(string)
        instance_requirements = optional(object({
          accelerator_count = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          accelerator_manufacturers = optional(set(string))
          accelerator_names         = optional(set(string))
          accelerator_total_memory_mib = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          accelerator_types      = optional(set(string))
          allowed_instance_types = optional(set(string))
          bare_metal             = optional(string)
          baseline_ebs_bandwidth_mbps = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          burstable_performance   = optional(string)
          cpu_manufacturers       = optional(set(string))
          excluded_instance_types = optional(set(string))
          instance_generations    = optional(set(string))
          local_storage           = optional(string)
          local_storage_types     = optional(set(string))
          memory_gib_per_vcpu = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          memory_mib = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          network_bandwidth_gbps = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          network_interface_count = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          on_demand_max_price_percentage_over_lowest_price = optional(number)
          require_hibernate_support                        = optional(bool)
          spot_max_price_percentage_over_lowest_price      = optional(number)
          total_local_storage_gb = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          vcpu_count = optional(object({
            max = optional(number)
            min = optional(number)
          }))
        }))
        instance_type     = optional(string)
        priority          = optional(number)
        spot_price        = optional(string)
        subnet_id         = optional(string)
        weighted_capacity = optional(number)
      })))
    })))
    spot_maintenance_strategies = optional(object({
      capacity_rebalance = optional(object({
        replacement_strategy = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.spot_fleet_requests : (
        v.context == null || (length(trimspace(v.context)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.spot_fleet_requests : (
        v.excess_capacity_termination_policy == null || (contains(["Default", "NoTermination"], v.excess_capacity_termination_policy))
      )
    ])
    error_message = "must be one of: Default, NoTermination"
  }
  validation {
    condition = alltrue([
      for k, v in var.spot_fleet_requests : (
        v.launch_template_config == null || alltrue([for item in v.launch_template_config : (item.overrides == null || alltrue([for item in item.overrides : (item.instance_requirements == null || (item.instance_requirements.on_demand_max_price_percentage_over_lowest_price == null || (item.instance_requirements.on_demand_max_price_percentage_over_lowest_price >= 1)))]))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.spot_fleet_requests : (
        v.launch_template_config == null || alltrue([for item in v.launch_template_config : (item.overrides == null || alltrue([for item in item.overrides : (item.instance_requirements == null || (item.instance_requirements.spot_max_price_percentage_over_lowest_price == null || (item.instance_requirements.spot_max_price_percentage_over_lowest_price >= 1)))]))])
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 52 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

