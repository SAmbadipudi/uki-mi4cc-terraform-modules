output "market_cloudwatch_event_rule_name" {
  value = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule.*.name}"
}

output "market_cloudwatch_event_rule_arn" {
  value = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule.*.arn}"
}
