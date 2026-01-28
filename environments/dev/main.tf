module "aj_rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}


module "aj_stg" {
  depends_on = [module.aj_rg]
  source     = "../../modules/azurerm_storage_account"
  stgs       = var.stgs
}



module "aj_vnet" {
  depends_on = [module.aj_rg]
  source     = "../../modules/azurerm_vnet"
  vnets      = var.vnets
}
