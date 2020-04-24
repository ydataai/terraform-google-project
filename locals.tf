locals {
  billing      = data.google_billing_account.billing.id
  organization = data.google_organization.org.name
}
