output "domain_zone_records_id" {
  description = "Map of id values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no id are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "domain_zone_records_fieldtype" {
  description = "Map of fieldtype values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no fieldtype are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.fieldtype if v.fieldtype != null && length(v.fieldtype) > 0 }
}
output "domain_zone_records_subdomain" {
  description = "Map of subdomain values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no subdomain are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.subdomain if v.subdomain != null && length(v.subdomain) > 0 }
}
output "domain_zone_records_target" {
  description = "Map of target values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no target are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.target if v.target != null && length(v.target) > 0 }
}
output "domain_zone_records_ttl" {
  description = "Map of ttl values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no ttl are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.ttl if v.ttl != null }
}
output "domain_zone_records_zone" {
  description = "Map of zone values across all domain_zone_records, keyed the same as var.domain_zone_records except keys with no zone are omitted"
  value       = { for k, v in ovh_domain_zone_record.domain_zone_records : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

