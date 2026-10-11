output "spot_fleet_requests_id" {
  description = "Map of id values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spot_fleet_requests_allocation_strategy" {
  description = "Map of allocation_strategy values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.allocation_strategy if v.allocation_strategy != null && length(v.allocation_strategy) > 0 }
}
output "spot_fleet_requests_client_token" {
  description = "Map of client_token values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.client_token if v.client_token != null && length(v.client_token) > 0 }
}
output "spot_fleet_requests_context" {
  description = "Map of context values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.context if v.context != null && length(v.context) > 0 }
}
output "spot_fleet_requests_excess_capacity_termination_policy" {
  description = "Map of excess_capacity_termination_policy values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.excess_capacity_termination_policy if v.excess_capacity_termination_policy != null && length(v.excess_capacity_termination_policy) > 0 }
}
output "spot_fleet_requests_fleet_type" {
  description = "Map of fleet_type values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.fleet_type if v.fleet_type != null && length(v.fleet_type) > 0 }
}
output "spot_fleet_requests_iam_fleet_role" {
  description = "Map of iam_fleet_role values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.iam_fleet_role if v.iam_fleet_role != null && length(v.iam_fleet_role) > 0 }
}
output "spot_fleet_requests_instance_interruption_behaviour" {
  description = "Map of instance_interruption_behaviour values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.instance_interruption_behaviour if v.instance_interruption_behaviour != null && length(v.instance_interruption_behaviour) > 0 }
}
output "spot_fleet_requests_instance_pools_to_use_count" {
  description = "Map of instance_pools_to_use_count values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.instance_pools_to_use_count if v.instance_pools_to_use_count != null }
}
output "spot_fleet_requests_launch_specification" {
  description = "Map of launch_specification values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.launch_specification if v.launch_specification != null && length(v.launch_specification) > 0 }
}
output "spot_fleet_requests_launch_template_config" {
  description = "Map of launch_template_config values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.launch_template_config if v.launch_template_config != null && length(v.launch_template_config) > 0 }
}
output "spot_fleet_requests_load_balancers" {
  description = "Map of load_balancers values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.load_balancers if v.load_balancers != null && length(v.load_balancers) > 0 }
}
output "spot_fleet_requests_on_demand_allocation_strategy" {
  description = "Map of on_demand_allocation_strategy values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.on_demand_allocation_strategy if v.on_demand_allocation_strategy != null && length(v.on_demand_allocation_strategy) > 0 }
}
output "spot_fleet_requests_on_demand_max_total_price" {
  description = "Map of on_demand_max_total_price values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.on_demand_max_total_price if v.on_demand_max_total_price != null && length(v.on_demand_max_total_price) > 0 }
}
output "spot_fleet_requests_on_demand_target_capacity" {
  description = "Map of on_demand_target_capacity values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.on_demand_target_capacity if v.on_demand_target_capacity != null }
}
output "spot_fleet_requests_region" {
  description = "Map of region values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.region if v.region != null && length(v.region) > 0 }
}
output "spot_fleet_requests_replace_unhealthy_instances" {
  description = "Map of replace_unhealthy_instances values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.replace_unhealthy_instances if v.replace_unhealthy_instances != null }
}
output "spot_fleet_requests_spot_maintenance_strategies" {
  description = "Map of spot_maintenance_strategies values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => one(v.spot_maintenance_strategies) if v.spot_maintenance_strategies != null && length(v.spot_maintenance_strategies) > 0 }
}
output "spot_fleet_requests_spot_price" {
  description = "Map of spot_price values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.spot_price if v.spot_price != null && length(v.spot_price) > 0 }
}
output "spot_fleet_requests_spot_request_state" {
  description = "Map of spot_request_state values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.spot_request_state if v.spot_request_state != null && length(v.spot_request_state) > 0 }
}
output "spot_fleet_requests_tags" {
  description = "Map of tags values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "spot_fleet_requests_tags_all" {
  description = "Map of tags_all values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "spot_fleet_requests_target_capacity" {
  description = "Map of target_capacity values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.target_capacity if v.target_capacity != null }
}
output "spot_fleet_requests_target_capacity_unit_type" {
  description = "Map of target_capacity_unit_type values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.target_capacity_unit_type if v.target_capacity_unit_type != null && length(v.target_capacity_unit_type) > 0 }
}
output "spot_fleet_requests_target_group_arns" {
  description = "Map of target_group_arns values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.target_group_arns if v.target_group_arns != null && length(v.target_group_arns) > 0 }
}
output "spot_fleet_requests_terminate_instances_on_delete" {
  description = "Map of terminate_instances_on_delete values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.terminate_instances_on_delete if v.terminate_instances_on_delete != null && length(v.terminate_instances_on_delete) > 0 }
}
output "spot_fleet_requests_terminate_instances_with_expiration" {
  description = "Map of terminate_instances_with_expiration values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.terminate_instances_with_expiration if v.terminate_instances_with_expiration != null }
}
output "spot_fleet_requests_valid_from" {
  description = "Map of valid_from values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.valid_from if v.valid_from != null && length(v.valid_from) > 0 }
}
output "spot_fleet_requests_valid_until" {
  description = "Map of valid_until values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.valid_until if v.valid_until != null && length(v.valid_until) > 0 }
}
output "spot_fleet_requests_wait_for_fulfillment" {
  description = "Map of wait_for_fulfillment values across all spot_fleet_requests, keyed the same as var.spot_fleet_requests"
  value       = { for k, v in aws_spot_fleet_request.spot_fleet_requests : k => v.wait_for_fulfillment if v.wait_for_fulfillment != null }
}

