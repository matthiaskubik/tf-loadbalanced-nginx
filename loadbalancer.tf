resource "ibmcloud_infra_lb_local" "nginx_lb" {
  connections = 250
  datacenter = "${var.datacenter}"
  ha_enabled = false
  dedicated = false
}

resource "ibmcloud_infra_lb_local_service_group" "nginx_lb_service_group" {
  port = "${var.port}"
  routing_method = "ROUND_ROBIN"
  routing_type = "HTTP"
  load_balancer_id = "${ibmcloud_infra_lb_local.nginx_lb.id}"
  allocation = 100
}

resource "ibmcloud_infra_lb_local_service" "nginx_lb_local_service" {
  count = "${var.node_count}"
  port = "${var.port}"
  enabled = true
  service_group_id = "${ibmcloud_infra_lb_local_service_group.nginx_lb_service_group.service_group_id}"
  weight = 1
  health_check_type = "HTTP"
  ip_address_id = "${element(ibmcloud_infra_virtual_guest.nginx_node.*.ip_address_id, count.index)}"
  depends_on = ["ibmcloud_infra_virtual_guest.nginx_node"] #shows explicit
}
