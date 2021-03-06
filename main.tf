provider "vcd" {
  user  = var.vcd_user
  password  = var.vcd_pass
  org      = var.org
  vdc      = var.vdc
  url      = var.url
  allow_unverified_ssl = true
  max_retry_timeout = "240"
}

resource "vcd_vapp" "change_vapp_change" {
  name = var.vcd_vapp_name
}


resource "vcd_vapp_org_network" "change_orgnet" {
  vapp_name        = vcd_vapp.web.name
  org_network_name = var.vm_network_name
}

resource "vcd_vapp_vm" "change_vapp_change" {
  vapp_name     = var.vcd_vapp_name
  name          = var.vm_name
  computer_name = var.vm_name
  catalog_name  = var.template_folder
  template_name = var.template_name
  memory        = var.vm_memory
  cpus          = var.vm_cpus
  cpu_cores     = var.vm_cpu_cores
  power_on      = var.vm_power_on

  metadata = {
    role    = var.vm_role
    env     = var.vm_env
    version = var.vm_version
    my_key  = "my value"
  }

  network {
    type               = var.vm_network_type
    name               = vcd_vapp_org_network.change_orgnet.org_network_name
    ip_allocation_mode = var.net_ip_allocation_mode
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