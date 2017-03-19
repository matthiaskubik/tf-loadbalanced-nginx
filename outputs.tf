output "loadbalancer_address" {
    value = "http://${ibmcloud_infra_lb_local.nginx_lb.ip_address}:${var.port}/"
}

output "node_one_address" {
    value = "http://${ibmcloud_infra_virtual_guest.nginx_node.0.ipv4_address}/"
}

output "node_two_address" {
    value = "http://${ibmcloud_infra_virtual_guest.nginx_node.1.ipv4_address}/"
}
