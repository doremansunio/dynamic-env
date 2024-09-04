# variables.tf
variable "selected_resources" {
  type = list(string)
}

# main.tf
resource "null_resource" "trigger_modules" {
  # This is just a trigger to force module execution
}

data "template_file" "available_resources" {
  filename = "resources.json"
}

variable "resource_config" {
  type = map(object({
    # Specific configuration per resource type
  }))
}

dynamic "module" "resource_modules" {
  for_each = var.selected_resources

  content {
    name = each.value
    source = "./modules/${each.value}.tf"

    # Pass configuration based on resource type
    # This might involve accessing resource_config
    ${each.value.type} = var.resource_config[each.value.type]
  }
}