resource "ibmcloud_infra_virtual_guest" "nginx_node" {
  count                = "${var.node_count}"
  hostname             = "nginx-node-${count.index+1}"
  domain               = "demo.com"
  os_reference_code    = "${var.nginx_operating_system}"
  datacenter           = "${var.datacenter}"
  private_network_only = false
  cores                = 1
  memory               = 1024
  local_disk           = true
  #public_vlan_id       = "${ibmcloud_infra_vlan.es_vlan.id}"
  #private_vlan_id      = "${ibmcloud_infra_vlan.es_vlan.subnets[0]}"

  ssh_key_ids = [
    "${ibmcloud_infra_ssh_key.ssh_key.id}"
  ]

  provisioner "remote-exec" {
    script = "nginx.sh"
  }

  tags = [
     "nginx",
     "interconnect2017demo"
  ]
}
