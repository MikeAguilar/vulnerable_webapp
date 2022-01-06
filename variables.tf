variable "linode_api_token" {
    description = "Linode account API token"
    type        = string
    sensitive   = true
}

variable "linode_vm_root_password" {
    description = "Root password to assign to the newly created Linode"
    type        = string
    sensitive   = true
}

variable "cloudflare_email" {
    description = "Cloudflare account to manage DNS Domain"
    type        = string
}

variable "cloudflare_api_token" {
    description = "Cloudflare API Key"
    type        = string
    sensitive   = true
}

variable "site_domain" {
    description = "Cloudflare managed DNS domain/zone to be used"
    type        = string
}

variable "public_ssh_key" {
    description = "Public SSH key to add to Authorized Keys in the new Linode"
    type        = string
    sensitive   = true   
}

variable "private_ssh_key" {
    description = "Private key used to login to the newly create host "
    type        = string
    sensitive   = true
}
