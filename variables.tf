variable "vcd_user" {type = string}
variable "vcd_pass" {type = string}
variable "org" {type = string}
variable "vdc" {type = string}
variable "url" {type = string}
variable "vcd_vapp_name" {type = string}
variable "vm_name" {type = string}
variable "template_folder" {type = string}
variable "template_name" {type = string}

variable "vm_memory" {type = string}
variable "vm_cpus" {type = string}
variable "vm_cpu_cores" {type = string}
variable "vm_power_on" {}

variable "vm_network_name" {type = string}
variable "vm_network_type" {type = string}
variable "net_ip_allocation_mode" {type = string}
variable "net_ip" {
  default = null
  type = string
}
variable "net_is_primary" {
  default = true
}
variable "vm_role" {type = string}
variable "vm_env" {type = string}
variable "vm_version" {type = string}


