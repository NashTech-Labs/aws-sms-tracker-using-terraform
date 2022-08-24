module "aws-email-tracker-ses" {
 source = "./modules/ses"
 ses_configuration_set_name = "aws-email-tracker-configuration-set-${var.datacenter}-${var.environment}"
 ses_event_destination_name = "aws-email-tracker-event-destination-ses-${var.datacenter}-${var.environment}"
 sns_destination_name = module.aws-email-tracker-sns.sns_arn
 datacenter = var.datacenter
 environment = var.environment
 team = var.team
}
