variable "linode_api_token" {}

provider "linode" {
  token = "${var.linode_api_token}"
}
