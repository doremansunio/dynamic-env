variable "selected_resources" {
  type = list(object({ name = string, attributes = map(string) }))
  default = [
    { name = "project", attributes = {"name": "new-project", "description": "new-project"},
    { name = "group", attributes = {"name": "new-grp", "description": "new-grp"},
  ]
}
