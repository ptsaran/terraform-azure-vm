location              = "East US"
resource_group_name  = "demo-rg"
linux_vms = {
    "instance-1" = {
                        network_interface_ids = [ "/subscriptions/dbbe02e1-2b2f-43f2-8f26-494773e6f507/resourceGroups/demo-rg/providers/Microsoft.Network/networkInterfaces/nick-rg3" ]
                        vm_name = "instance-1"
                        vm_size = "Standard_B1s"
                    },
    "instance-2" = {
                        network_interface_ids = [ "/subscriptions/dbbe02e1-2b2f-43f2-8f26-494773e6f507/resourceGroups/demo-rg/providers/Microsoft.Network/networkInterfaces/nick-rg4" ]
                        vm_name = "instance-2"
                        vm_size = "Standard_B1ls"
                    }
}
