data "aws_default_tags" "this" {}

data "aws_caller_identity" "this" {}

data "aws_cloudhsm_v2_cluster" "this" {
  cluster_id = var.cloud_hsm_cluster_id
}