resource "aws_s3_bucket" "config_files_s3" {
  bucket        = "${var.S3_Bucket_Name}"
  acl           = "${var.core_acl}"
  versioning {
    enabled = "true"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  provisioner "local-exec" {
    command = "sleep 5"
  }
}

resource "aws_s3_bucket_policy" "config_files_s3bucket_policy" {
  bucket     = "${var.S3_Bucket_Name}"
  policy = "${var.s3_bucket_policy}"
  depends_on = ["aws_s3_bucket.config_files_s3"]

  provisioner "local-exec" {
    command = "sleep 15"
  }
}

resource "aws_s3_bucket_public_access_block" "core_s3_bucket_publicAccess" {
  bucket                  = "${var.S3_Bucket_Name}"
 block_public_acls       = "${var.block_bucket_public_acls}"
  block_public_policy     = "${var.block_bucket_public_policy}"
  ignore_public_acls      = "${var.ignore_public_acls}"
  restrict_public_buckets = "${var.restrict_public_buckets}"
  depends_on              = ["aws_s3_bucket_policy.config_files_s3bucket_policy"]

  provisioner "local-exec" {
    command = "sleep 15"
  }
}

