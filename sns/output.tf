output "sns_arn" {
  value = "${join("", aws_sns_topic.cloudwatch-sns-topic.*.arn)}"
}
