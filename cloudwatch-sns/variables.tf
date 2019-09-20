variable "cloudwatch_event_rule_name_for_sns" {
  description = "Username for DB connectivity"
}

variable "cloudwatch_event_rule_description_for_sns" {
  description = "AWS Glue DB connection Name"
}

variable "target-id" {
  description = "Lambda arn"
}

variable "sns_arn" {
  description = "SNS arn"
}

variable "event_pattern" {
  description = "Json file path"
}
