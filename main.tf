resource "azurerm_linux_virtual_machine" "linux_vm" {
  for_each              = var.linux_vms
  name                  = each.value.vm_name
  size                  = each.value.vm_size
  network_interface_ids = each.value.network_interface_ids
  resource_group_name   = var.resource_group_name
  location              = var.location
  admin_username        = "saran"

  admin_ssh_key {
     username   = "saran"
     public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
     caching              = "ReadWrite"
     storage_account_type = "Standard_LRS"
  }

  source_image_reference {
     publisher = "Redhat"
     offer     = "RHEL"
     sku       = "8_4"
     version   = "latest"
  }
}
