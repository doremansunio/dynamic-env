resource "rafay_workspace_group" "example" {
  name        = var.workspace_group_name
  description = var.workspace_group_description
  project_id = var.project_id

  # Optional: Add additional attributes specific to workspace groups
}
