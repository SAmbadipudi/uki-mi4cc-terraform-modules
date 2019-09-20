#output "mi4cc_cloudwatch_event_rule_name" {
#  value = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule.*.name}"
#}
#
output "mi4cc_cloudwatch_event_rule_arn" {
  value = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule.*.arn}"
}
#output "cloudwatch_eventPattern_arn" {
#  value = "${join("", aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule.*.arn)}"
#}
