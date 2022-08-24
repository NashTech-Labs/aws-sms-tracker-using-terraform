module "aws-email-tracker-sns" {
 source = "./modules/sns"
 sqs_arn = module.aws-email-tracker-sqs.sqs_arn
 sns_name = "aws-email-tracker-sns-topic-${var.datacenter}-${var.environment}"
 datacenter = var.datacenter
 environment = var.environment
 team = var.team
}
