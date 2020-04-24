resource "random_integer" "project_id" {
  min = 1
  max = 1000
}

resource "google_folder" "folder" {
  display_name = var.name
  parent       = local.organization
}

resource "google_project" "project" {
  for_each = toset(var.project.environments)

  name       = "${var.name} ${title(each.value.name)}"
  project_id = "ydata-${lower(var.name)}-${each.value.name}-${random_integer.project_id.result}"
  folder_id  = google_folder.folder.name

  auto_create_network = each.value.auto_create_network
  billing_account     = local.billing
}
