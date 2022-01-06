
# Deploy a VM in Linode using the following specs

resource "linode_instance" "terraform-webapp" {
        image           = "linode/ubuntu20.04"
        label           = "maguilar-vulnerable-webapp-demo"
        group           = "Terraform"
        region          = "eu-west"
        type            = "g6-nanode-1"
        authorized_keys = [ var.public_ssh_key ]
        root_pass       = var.linode_vm_root_password

        tags            = ["SolArc"]
        #private_ip      = true

        provisioner "remote-exec" {
                inline  = ["sudo apt update", 
                        "sudo apt install ca-certificates curl gnupg lsb-release -y", 
                        "sudo apt install docker.io -y",
                        "docker run -d --rm -p 80:3000 bkimminich/juice-shop",
                        "echo ALL DONE!!!"]

                connection {
                        host        = self.ip_address
                        type        = "ssh"
                        user        = "root"
                        private_key = var.private_ssh_key
                }
        }
}
