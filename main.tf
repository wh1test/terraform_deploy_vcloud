provider "vcd" {
  user     = var.admin_user
  password = var.admin_password
  org      = var.org
  vdc      = var.org
  url      = var.url
}

resource "vcd_vapp_vm" var.vcd_vapp_name {
  vapp_name     = var.vcd_vapp_name
  name          = var.vcd_vm_name
  computer_name = var.vm_name
  catalog_name  = var.template_folder
  template_name = var.template_name
  memory        = var.vm_memory
  cpus          = var.vm_cpus
  cpu_cores     = var.vm_cpu_cores

  metadata = {
    role    = var.vm_role
    env     = vm.vm_env
    version = var.vm_version
    my_key  = "my value"
  }

  network {
    type               = var.vm_network_type
    name               = var.vm_network_name
    ip_allocation_mode = var.ip_allocation_mode
    ip                 = var.net_ip
    is_primary         = var.net_is_primary
  }
  
  customization {
    force                      = false
    change_sid                 = false
    allow_local_admin_password = false
    auto_generate_password     = false
    # Other customization options to override the ones from template
  }
}