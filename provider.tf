provider "ibmcloud" {
  #See https://github.ibm.com/blueprint/bluemix-terraform-provider-dev/blob/master/website/source/docs/providers/ibmcloud/index.html.markdown#argument-reference
  #for reference
  ibmid              = "${var.ibmid}"
  ibmid_password     = "${var.ibmidpw}"
  softlayer_timeout  = 300
  softlayer_account_number = "${var.slaccountnum}"
}
