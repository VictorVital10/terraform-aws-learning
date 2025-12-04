resource "aws_s3_bucket" "my-tfs3" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "my-obj" {
  bucket = aws_s3_bucket.my-tfs3.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)

}