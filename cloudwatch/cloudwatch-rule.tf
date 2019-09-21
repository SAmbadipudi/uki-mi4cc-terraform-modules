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

resource "aws_cloudwatch_event_target" "market_cloudwatch_event_target" {
  count     = "${length("${var.event_rules}")}" 
  target_id = "${var.event_target_id}-${var.event_rules[count.index]}"
  rule      = "${aws_cloudwatch_event_rule.mi4cc_cloudwatch_event_rule[count.index].name}"
  arn       = "${aws_lambda_function.mi4cc_eventwatch_lambda.arn}"
#  input     = "${var.event_target_json_input[count.index]}"
  input     = <<EOF
{ "bucket_name": "${var.bucket_name}", "file_path": "${var.file_path}", "glue_job_name": "${var.glue_job_name}" }
EOF
}
