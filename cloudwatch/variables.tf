variable "event_rules" {
  description = "Event rules"
  type = "list"
}

variable "schedule_expression" {
   type        = "map"
}

variable "event_target_id" {
   description = "event target ID"
}

#variable "input1" {
#   description      = "Provide option key name"
#}
#
##variable "input2" {
#   description      = "Provide option key name"
#}
#
#variable "input3" {
#   description      = "Provide option key name"
#}
#
#variable "bucket-name" {
#   description      = "Value for the input1 key"
#}
#
#variable "file-path" {
#   description      = "Value for the input2 key"
#}
#
#variable "glue-job-name" {
#   description      = "Value for the input3 key"
#}
variable "cloudwatch_event_rule_name" {
  description = "Username for DB connectivity"
}

variable "cloudwatch_event_rule_description" {
  description = "AWS Glue DB connection Name"
}

variable "lambda_arn" {
  description = "Lambda arn"
}

variable "action_lambda" {
  description = "Lambda Action"
}

variable "cloudwatch_lambda_st_id" {
  description = "Unique name for the Lambda permission"
}
