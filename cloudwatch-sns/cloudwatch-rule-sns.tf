resource "aws_cloudwatch_event_rule" "mi4cc_cloudwatch_event_rule-for-sns" {
  name                = "${var.cloudwatch_event_rule_name_for_sns}"
  description         = "${var.cloudwatch_event_rule_description_for_sns}"
  event_pattern = "${var.event_pattern}"
}

resource "aws_cloudwatch_event_target" "mi4cc_cloudwatch_event_target-sns" {
  target_id = "${var.target-id}"
  rule      = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule-for-sns.name}"
  arn       = "${var.sns_arn}"
}

