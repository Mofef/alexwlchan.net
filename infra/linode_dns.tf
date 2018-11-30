resource "linode_domain" "bijouopera" {
  domain    = "bijouopera.co.uk"
  soa_email = "alex@alexwlchan.net"
}

resource "linode_domain_record" "bijouopera" {
  domain_id   = "${linode_domain.bijouopera.id}"
  name        = "www"
  record_type = "*"
  target      = "${linode_instance.helene.ipv4}"
}
