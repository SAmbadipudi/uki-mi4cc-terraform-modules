resource "aws_cloudwatch_event_rule" "mi4cc_cloudwatch_event_rule" {
  count               = "${length("${var.event_rules}")}"
  name                = "${var.cloudwatch_event_rule_name}-${var.event_rules[count.index]}"
  description         = "${var.cloudwatch_event_rule_description}  ${var.event_rules[count.index]}"
  schedule_expression = "${lookup(var.schedule_expression, var.event_rules[count.index])}"
  
  tags = {
      Name                = "${var.cloudwatch_event_rule_name}"
      Owner-CreatedBy	  = "${var.Owner-CreatedBy}"
      Owner-Data	  = "${var.Owner-Data}"
      Owner-Infra         = "${var.Owner-Infra}"
      Project-Name        = "${var.Project-Name}"
      Project-SubProjectName = "${var.Project-SubProjectName}"
      Project-WBSCode	  = "${var.Project-WBSCode}"
      TechnicalOwner      = "${var.technical_owner}"
      Environment         = "${lower(terraform.workspace)}"
      BillingCode         = "${var.billing_code}"
      Compliance          = "${var.compliance}"
    }
}
