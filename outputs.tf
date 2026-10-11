output "switchover_pairs_id" {
  description = "Map of id values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no id are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "switchover_pairs_active_member" {
  description = "Map of active_member values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no active_member are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.active_member if v.active_member != null && length(v.active_member) > 0 }
}
output "switchover_pairs_display_name" {
  description = "Map of display_name values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no display_name are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "switchover_pairs_environment_crn" {
  description = "Map of environment_crn values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no environment_crn are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.environment_crn if v.environment_crn != null && length(v.environment_crn) > 0 }
}
output "switchover_pairs_failover_type" {
  description = "Map of failover_type values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no failover_type are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.failover_type if v.failover_type != null && length(v.failover_type) > 0 }
}
output "switchover_pairs_first_active" {
  description = "Map of first_active values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no first_active are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.first_active if v.first_active != null && length(v.first_active) > 0 }
}
output "switchover_pairs_members" {
  description = "Map of members values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no members are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.members if v.members != null && length(v.members) > 0 }
}
output "switchover_pairs_phase" {
  description = "Map of phase values across all switchover_pairs, keyed the same as var.switchover_pairs except keys with no phase are omitted"
  value       = { for k, v in confluent_switchover_pair.switchover_pairs : k => v.phase if v.phase != null && length(v.phase) > 0 }
}

