resource "aws_cloudwatch_event_target" "market_cloudwatch_event_target" {
  count     = "${length("${var.event_rules}")}" 
  target_id = "${var.event_target_id}-${var.event_rules[count.index]}"
  rule      = "${var.event_taget_rule_name[count.index]}"
  arn       = "${var.event_target_resource_arn}"
  input     = <<EOF
{ 
  "bucketname":"${var.bucket-name}",
  "filepath":"uki/contactcentre/avaya/config/${var.event_rules[count.index]}.json", 
  "gluejobname":"${var.glue-job-name}"
}
EOF
}
