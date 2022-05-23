# https://www.terraform.io/language/values/outputs

output "ip_prive_vm" {
  value = azurerm_linux_virtual_machine.terra_vm.private_ip_address
}

output "ip_public_vm" {
  value = "${azurerm_public_ip.terra_vnet_public_ip.*.ip_address}"
}
