variable "namespaces" {
  type = map(map(string))
  default = {
    dev = {
      environment = "dev"
      team        = "platform"
    }
    monitoring = {
      environment = "shared"
      purpose     = "observability"
    }
  }
}
