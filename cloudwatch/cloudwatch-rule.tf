resource "aws_lambda_function" "mi4cc_eventwatch_lambda" {
        function_name = "eventwatch"
        handler = "lambda_function.lambda_handler"
        runtime = "python2.7"
        filename = "files/eventwatch.zip"
        source_code_hash = "${base64sha256(filebase64("files/eventwatch.zip"))}"
        role = "${var.lambda_arn}"
        timeout = 15
}

resource "aws_cloudwatch_event_rule" "mi4cc_cloudwatch_event_rule" {
  count               = "${length("${var.event_rules}")}"
  name                = "${var.cloudwatch_event_rule_name}-${var.event_rules[count.index]}"
  description         = "${var.cloudwatch_event_rule_description}  ${var.event_rules[count.index]}"
  schedule_expression = "${lookup(var.schedule_expression, var.event_rules[count.index])}"
}

resource "aws_cloudwatch_event_target" "mi4cc_event_target" {
  rule      = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule[count.index].name}"
  arn       = "arn:aws:iam::195211983652:role/uki_mi4cc_iam_role_glue"
}
