provider "aws" {
  region = "us-west-2"
}
 
module "s3backend" {
  source    = "github.com/b-cor/terraform-aws-s3bucket-backend"
  namespace = "team-rocket"
}
 
output "s3backend_config" {
  value = module.s3backend.config
}