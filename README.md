
# Vulnerable WebApp Demo
Using Terraform to deploy a Vulnerable Web Application to demonstrate how a Web Application Firewall (WAF) can help mitigate and reduce the risk of malicious hacking attempts.


## What does it do?
As provided, this Terraform config will do the following:

- It will create a Linode *(nanode)* in London *(eu-west)* to host the vulnerable web application.
- It will install Docker in the newly created host via `apt`.
- It will pull the Docker image with the vulnerable webapp Juice-Shop and will run it on the host's port 80.
- It will create a new DNS record in Cloudflare mapping to the newly created Linode host.
- After the demo has been completed and on-demand, it will destroy the infrastructure created.


## Prerequisites and Dependencies
This Terraform script has the following dependencies

- Terraform 1.0.6 (installed locally)

- A CloudFlare account with a web domain available.

- A Linode account with access to add/remove Linodes.

***Note:*** You will be required to get their respective API keys/tokens for each of them. For CloudFlare, you will need to ensure your token has permission to manipulate DNS Zones.


## How to use

### Create and configure new infrastructure

- Clone this repository to your local machine where Terraform is already installed.

- Change to the repository directory. 

    `$ cd vulnerable_webapp`

- Rename the file `secrets.tfvars.example` to `secrets.tfvars` and edit it to fill it in with your own information.

    `$ mv secrets.tfvars.example secrets.tfvars`

    `$ nano secrets.`

- Initialize the Terraform environment.

    `$ terraform init`

- Verify Terraform config is good to go.

    `$ terraform plan -var-file="secrets.tfvars"`

- Deploy the infrastructure.

    `$ terraform deploy -var-file="secrets.tfvars"`

### Destroy all created infrastructure
    
- Once you have completed the demo, run the following command to destroy and remove the Linode and DNS record previously created.

    `$ terraform destroy -var-file="secrets.tfvars"`

## Customize infrastructure values/specs
In order to customize the deployment default values, such as the subdomain name used, the location where the Linode gets created, etc. you will need to modify some other files.

