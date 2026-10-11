variable "domain_zone_records" {
  description = <<EOT
Map of domain_zone_records, attributes below
Required:
    - fieldtype
    - target
    - zone
Optional:
    - subdomain
    - ttl
EOT

  type = map(object({
    fieldtype = string
    target    = string
    zone      = string
    subdomain = optional(string)
    ttl       = optional(number)
  }))
}

