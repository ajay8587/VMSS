variable "vnets" {
  type = map(object({
    virtual_network_name     = string
    resource_group_name      = string
    virtual_network_location = string
    address_space            = list(string)


  }))
}
