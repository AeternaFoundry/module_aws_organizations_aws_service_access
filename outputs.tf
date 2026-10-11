output "organizations_aws_service_accesses_date_enabled" {
  description = "Map of date_enabled values across all organizations_aws_service_accesses, keyed the same as var.organizations_aws_service_accesses"
  value       = { for k, v in aws_organizations_aws_service_access.organizations_aws_service_accesses : k => v.date_enabled if v.date_enabled != null && length(v.date_enabled) > 0 }
}
output "organizations_aws_service_accesses_service_principal" {
  description = "Map of service_principal values across all organizations_aws_service_accesses, keyed the same as var.organizations_aws_service_accesses"
  value       = { for k, v in aws_organizations_aws_service_access.organizations_aws_service_accesses : k => v.service_principal if v.service_principal != null && length(v.service_principal) > 0 }
}

