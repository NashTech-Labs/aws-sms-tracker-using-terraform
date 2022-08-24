resource "aws_sqs_queue" "test-notifications" {
 name = var.sqs_name
 delay_seconds = 90
 max_message_size = 262144
 message_retention_seconds = 345600
 receive_wait_time_seconds = 10
 redrive_policy = jsonencode({
   deadLetterTargetArn = aws_sqs_queue.test-notifications-dlq.arn
   maxReceiveCount = 4
 })

 tags = {
   environment = var.environment
   team = var.team
 }
}

resource "aws_sqs_queue" "test-notifications-dlq" {
 name = var.sqs_dlq_name
 delay_seconds = 90
 max_message_size = 262144
 message_retention_seconds = 86400
 receive_wait_time_seconds = 10

 tags = {
   environment = var.environment
   team = var.team
 }
}

resource "aws_sqs_queue_policy" "test-notifications" {
 queue_url = aws_sqs_queue.test-notifications.id
 policy = <<POLICY
{
 "Version": "2012-10-17",
 "Id": "${aws_sqs_queue.test-notifications.arn}/SQSDefaultPolicy",
 "Statement": [
   {
     "Effect": "Allow",
     "Principal": {
       "AWS": "*"
     },
     "Action": "SQS:SendMessage",
     "Resource": "${aws_sqs_queue.test-notifications.arn}",
     "Condition": {
       "ArnEquals": {
         "aws:SourceArn": "${var.sns_arn}"
       }
     }
   }
 ]
}
POLICY
}
