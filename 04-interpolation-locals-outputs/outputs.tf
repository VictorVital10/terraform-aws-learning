output "bucket_name" {
  value = aws_s3_bucket.my-tfs3.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.my-tfs3.arn 
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.my-tfs3.bucket_domain_name
}

output "ip_filepath" {
  value = "${aws_s3_bucket.my-tfs3.bucket}/${aws_s3_object.my-obj.key}"
}