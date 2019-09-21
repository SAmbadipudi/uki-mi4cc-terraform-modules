variable "event_rules" {
  description = "Event rules"
  type = "list"
}

variable "event_target_id" {
   description = "event target ID"
}

variable "event_taget_rule_name" {
   description = "event target rule names"
   type = "list"
}

variable "bucket-name" {
   description      = "Value for the input1 key"
}


variable "glue-job-name" {
   description      = "Value for the input3 key"
}

variable "event_target_resource_arn" {
  description = "Lambda arn"
}
