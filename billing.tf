data "google_billing_account" "billing" {
  billing_account = var.billing.id
  display_name    = var.billing.name
  open            = var.billing.open
}
