output "sqs_queue_arn" {
 value = module.aws-email-tracker-sqs.sqs_arn
}

output "sqs_queue_name" {
 value = module.aws-email-tracker-sqs.sqs_name
}

output "sns_topic_arn" {
 value = module.aws-email-tracker-sns.sns_arn
}

output "sns_topic_name" {
 value = module.aws-email-tracker-sns.sns_name
}

output "sns_platform_ios_id" {
 value = module.sns-platform-test-notifications.sns_platform_ios_id
}

output "sns_platform_ios_arn" {
 value = module.sns-platform-test-notifications.sns_platform_ios_arn
}

output "sns_platform_android_id" {
 value = module.sns-platform-test-notifications.sns_platform_android_id
}

output "sns_platform_android_arn" {
 value = module.sns-platform-test-notifications.sns_platform_android_arn
}

