resource "aws_ses_configuration_set" "test-notifications" {
 name = var.ses_configuration_set_name
}

resource "aws_ses_event_destination" "test-notifications" {
 name                   = var.ses_event_destination_name
 configuration_set_name = aws_ses_configuration_set.test-notifications.name
 enabled                = true
 matching_types         = ["bounce", "send","reject","complaint","delivery","click","open"]

 sns_destination {
   topic_arn = var.sns_destination_name
 }
}
