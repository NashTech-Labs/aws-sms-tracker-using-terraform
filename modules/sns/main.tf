resource "aws_sns_topic" "test-notifications" {
 name = var.sns_name

 tags = {
   environment = var.environment
   team = var.team
 }
}

resource "aws_sns_topic_subscription" "test-notifications" {
 topic_arn = aws_sns_topic.test-notifications.arn
 protocol = "sqs"
 endpoint = var.sqs_arn
}
