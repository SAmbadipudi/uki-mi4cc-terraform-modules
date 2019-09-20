variable "core_acl" {
  description = "set acl for S3 bucket"
}

variable "s3_bucket_policy" {
  description = "Policy set for config files s3 bucket"
}

variable "S3_Bucket_Name" {
  description = "name of Private S3 bucket"
}

variable "block_bucket_public_acls" {
  description = "Whether Block Public ACL need to enable or not., Default is False"
}

variable "block_bucket_public_policy" {
  description = "Whether Block Public access bucket policy., Default is False"
}

variable "ignore_public_acls" {
  description = "Ignore Public access ACL for Bucket., Default is False"
}

variable "restrict_public_buckets" {
  description = "Restrict public access to S3 bucket which is mentioned in Policy., Default is False"
}

