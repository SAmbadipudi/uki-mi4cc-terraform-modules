resource "aws_cloudwatch_event_rule" "mi4cc_cloudwatch_event_rule" {
  count               = "${length("${var.event_rules}")}"
  name                = "${var.cloudwatch_event_rule_name}-${var.event_rules[count.index]}"
  description         = "${var.cloudwatch_event_rule_description}  ${var.event_rules[count.index]}"
  schedule_expression = "${lookup(var.schedule_expression, var.event_rules[count.index])}"
}
