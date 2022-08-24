module "aws-email-tracker-sqs" {
 source = "./modules/sqs-no-encryption"
 sns_arn = module.aws-email-tracker-sns.sns_arn
 sqs_name = "aws-email-tracker-sqs-queue-${var.datacenter}-${var.environment}"
 sqs_dlq_name = "aws-email-tracker-dlq-${var.datacenter}-${var.environment}"
 datacenter = var.datacenter
 environment = var.environment
 team = var.team
}
