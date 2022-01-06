terraform {

  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.25.0"
    }

    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }

  }
}

provider "linode" {
  token = var.linode_api_token
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_token = var.cloudflare_api_token
}
