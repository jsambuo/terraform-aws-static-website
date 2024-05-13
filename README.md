
# Terraform AWS Static Website Module

This Terraform module sets up a static website on AWS, utilizing S3 for storage, CloudFront for content delivery, and Route 53 for DNS management.

## Features

- **S3 Bucket**: Hosts static content with public access.
- **CloudFront Distribution**: Serves content globally with low latency.
- **Route 53 Record**: Connects your custom domain to the CloudFront distribution.

## Usage

To use this module in your Terraform environment, copy the example provided in `examples/basic_usage` and adjust the variables as needed.

```hcl
module "static_website" {
  source = "github.com/jsambuo/terraform-aws-static-website"

  bucket_name    = "your-website-bucket"
  domain_name    = "yourdomain.com"
  route53_zone_id = "your-route53-zone-id"
}

output "cloudfront_distribution_id" {
  value = module.static_website.cloudfront_distribution_id
}

output "s3_bucket_name" {
  value = module.static_website.s3_bucket_name
}
```

## Requirements

- Terraform 0.12+
- AWS Provider 3.0+

## Variables

| Name             | Description                         | Type   |
|------------------|-------------------------------------|--------|
| `bucket_name`    | The name of the S3 bucket           | string |
| `domain_name`    | The domain name for the website     | string |
| `route53_zone_id`| Route 53 Hosted Zone ID             | string |

## Outputs

| Name                      | Description |
|---------------------------|-------------|
| `s3_bucket_name`          | The name of the S3 bucket used for the website. |
| `cloudfront_distribution_id` | The ID of the CloudFront distribution. |

## License

MIT License. See `LICENSE` for full details.
