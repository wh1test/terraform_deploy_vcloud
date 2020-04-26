variable "vcd_user" {}
variable "vcd_pass" {}

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
variable "vm_power_on" {}

variable "vm_network_name" {}
variable "vm_network_type" {}
variable "net_ip_allocation_mode" {}
variable "net_ip" {
  default = null
}
variable "net_is_primary" {
  default = true
}
variable "vm_role" {}
variable "vm_env" {}
variable "vm_version" {}


