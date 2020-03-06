#
# Cloud Related 
#
ibmcloud_api_key    = "myIBMCloudAPIKey"
ibmcloud_generation = "2"
ibmcloud_region     = "us-south"
ibmcloud_zone       = "us-south-3"

#
# VPC Related 
#
vpc_name            = "yussuf-tf-pvc"
subnet_name         = "yussuf-tf-sn"
ipv4_cidr_block     = "10.240.128.0/24"

resource_group      = "default"
# this is the corresponding private key file to be used for the SSH
# Public key path is calculated as ${private_ssh_key}.pub
private_ssh_key     = "id_rsa" 
ssh_key_label       = "yussuf-tfssh"
rhel_username       = "root"

# VSI Common
image_id            = "r006-a5636224-fcce-11e9-8542-cf9657fdcaa3"
hostname_prefix     = "yussuf"
docker_volume_prefix = "yussuf-vol"
docker_volume_size  = "50"

#
#
master = {name = "master", profile_id = "bp2-2x8", fip_name = "master-p-fip", count = "1"}
infra = {name = "infra", profile_id = "bp2-2x8", fip_name = "infra-p-fip", count = "1"}
worker = {name = "worker", profile_id = "bp2-2x8", fip_name = "worker-p-fip", count = "1"}
domain_name = "IBM-OpenShift.cloud"

# RHEL Registeration
rhel_subscription_username  = ""
rhel_subscription_password  = ""
subscription_pool_list      = ["mysubscriptionpoolID"]
