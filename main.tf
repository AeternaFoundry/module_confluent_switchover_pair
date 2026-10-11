resource "confluent_switchover_pair" "switchover_pairs" {
  for_each = var.switchover_pairs

  active_member   = each.value.active_member
  display_name    = each.value.display_name
  environment_crn = each.value.environment_crn

  dynamic "members" {
    for_each = each.value.members
    content {
      member_crn = members.value.member_crn
      name       = members.value.name
    }
  }
}

