variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket to be created for the website."
}

variable "domain_name" {
  type        = string
  description = "The domain name for the website."
}

variable "route53_zone_id" {
  type        = string
  description = "The Route 53 Hosted Zone ID for the domain."
}
