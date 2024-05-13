output "s3_bucket_name" {
  value       = aws_s3_bucket.website_bucket.bucket
  description = "The name of the S3 bucket used for the website."
}

output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.website_cdn.id
  description = "The ID of the CloudFront distribution."
}
