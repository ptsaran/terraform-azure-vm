output "vm_id" {
    value = { for j, k in azurerm_linux_virtual_machine.linux_vm: j => k.private_ip_address }
}