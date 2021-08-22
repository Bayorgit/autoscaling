terraform {
 backend "s3" {
   bucket = "terraform-state-3som"
   key    = "state"
   region = "us-east-1"
 }
}