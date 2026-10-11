resource "ovh_domain_zone_record" "domain_zone_records" {
  for_each = var.domain_zone_records

  fieldtype = each.value.fieldtype
  target    = each.value.target
  zone      = each.value.zone
  subdomain = each.value.subdomain
  ttl       = each.value.ttl
}

