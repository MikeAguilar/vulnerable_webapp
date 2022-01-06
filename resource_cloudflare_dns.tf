data "cloudflare_zones" "domain" {
  filter {
    name = var.site_domain
  }
}

resource "cloudflare_record" "vulnerableapp" {
  zone_id = data.cloudflare_zones.domain.zones[0].id
  name    = "vulnerableapp"
  value   = linode_instance.terraform-webapp.ip_address
  type    = "A"

  ttl     = 1
  proxied = false
}