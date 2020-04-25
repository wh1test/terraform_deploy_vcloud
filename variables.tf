variable "admin_user" {}
variable "admin_password" {}
variable "org" {}
variable "vdc" {}
variable "url" {}
variable "vcd_vapp_name" {}
variable "vm_name" {}
variable "template_folder" {}
variable "template_name" {}


variable "vm_memory" {}
variable "vm_cpus" {}
variable "vm_cpu_cores" {}
variable "vm_network_name" {}
variable "vm_network_type" {
  default = "org"
}
variable "net_ip_allocation_mode" {
  default = "POOL"  
}
variable "net_is_primary" {
  default = true
}



variable "vm_role" {}
variable "vm_env" {
  default = "stage"
}
variable "vm_version" {}

variable "vsphere_virtual_ipv4_address" {
  default = null
}
variable "vsphere_virtual_ipv4_gateway" {
  default = null
}
variable "vsphere_virtual_ipv4_netmask" {
    default = null
}