module "static_website" {
  source = "../../"  # Path to the module

  bucket_name    = var.bucket_name
  domain_name    = var.domain_name
  route53_zone_id = var.route53_zone_id
}

# Output the CloudFront distribution ID and S3 bucket name
output "cloudfront_distribution_id" {
  value = module.static_website.cloudfront_distribution_id
}

output "s3_bucket_name" {
  value = module.static_website.s3_bucket_name
}
