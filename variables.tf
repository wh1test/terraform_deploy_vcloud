variable "vcd_user" {}
variable "vcd_pass" {}

variable "org" {
  default = "193331498"
}
variable "vdc" {
  default = "193331498_001"
}
variable "url" {
  default = "https://vmw.a1.by/api"
}
variable "vcd_vapp_name" {
  default = "vApp_k8s"
}
variable "vm_name" {}
variable "template_folder" {
  default = "templates"
}
variable "template_name" {
  default = "c8-k8s-node-tmpl-a1"
}


variable "vm_memory" {
  default = 2048
}
variable "vm_cpus" {
  default = 1
}
variable "vm_cpu_cores" {
  default = 1
}
variable "vm_power_on" {
  default = true
}

variable "vm_network_name" {
  default = "dmz-net"
}
variable "vm_network_type" {
  default = "org"
}
variable "net_ip_allocation_mode" {
  default = "POOL"  
}
variable "net_ip" {
  default = null
}
variable "net_is_primary" {
  default = true
}
variable "vm_role" {
  default = "k8s-node"
}
variable "vm_env" {
  default = "stage"
}
variable "vm_version" {
  default = "1.0"
}


