data "google_organization" "org" {
  organization = var.organization.id
  domain       = var.organization.domain
}
