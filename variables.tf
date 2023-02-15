variable "linux_vms" {
    type = map(object({
        vm_name               = string
        vm_size               = string
        network_interface_ids = list(string)
    }))
}

variable "location" {
    type = string
}

variable "resource_group_name" {
    type = string
}