variable "selected_resources" { type = list(object({ name = string, attributes = map(string) }))
resource "null_resource" "trigger_modules" {
  # This is just a trigger to force module execution
}
dynamic "module" "resource_modules" {
  for_each = var.selected_resources
  content {
    name = each.value.name
    source = "./modules/${each.value.name}.tf"
    # Add attributes as module variables
    name = each.value.attributes.name
    description = each.value.attributes.description
    name = each.value.attributes.name
    description = each.value.attributes.description
    project = each.value.attributes.project
    group = each.value.attributes.group
  }
}
