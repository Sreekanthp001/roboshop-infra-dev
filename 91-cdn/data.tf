data "aws_cloudfront_cache_policy" "cacheEnable" {
  name = "Managed-CachingOptimized" # replace with the name of your cache policy
}

data "aws_cloudfront_cache_policy" "cacheDisable" {
    name = "Managed-CachingDisabled" # replace with the name of your cache policy
}

data "aws_ssm_parameter" "acm_certificate_arn" {
    name = "/${var.project}/${var.environment}/acm_certificate_arn"
}