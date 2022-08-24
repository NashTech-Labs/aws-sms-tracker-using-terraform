output "sns_platform_ios_arn" {
 value = aws_sns_platform_application.apns_application[*].arn
}

output "sns_platform_ios_id" {
 value = aws_sns_platform_application.apns_application[*].id
}

output "sns_platform_android_arn" {
 value = aws_sns_platform_application.gcm_application[*].arn
}

output "sns_platform_android_id" {
 value = aws_sns_platform_application.gcm_application[*].id
}
