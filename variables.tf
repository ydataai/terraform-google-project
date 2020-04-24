variable "billing" {
  description = "billing information to find the google cloud data for the billing in the organization"

  type = object({
    id   = string
    name = string
    open = bool
  })

  default = {
    id   = null
    name = "My Billing Account"
    open = true
  }
}

variable "organization" {
  description = "organization information to find the google cloud data for the organization"

  type = object({
    id     = string
    domain = string
  })

  default = {
    id     = null
    domain = null
  }
}

variable "project" {
  description = "project details for each environment"

  type = object({
    environments = list(object({
      name                = string
      auto_create_network = bool
    }))
  })
}

variable "environments" {
  description = "environments to create"

  type = list(string)

  default = ["prod"]
}

variable "name" {
  description = "Name for the folder and project to be created in the organization"
}
