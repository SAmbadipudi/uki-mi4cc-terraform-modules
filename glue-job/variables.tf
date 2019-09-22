variable "gl-count" {
  description = "No.of Glue Job process"
  default   =  "3"
}

variable "jobnames" {
 type = "list"
 description = "glue process name"
}

variable "arn" {
  description = "Role to run the Glue Job process"
  default     = "arn:aws:iam::195211983652:role/uki_iam_role_mi4cc_devops_engineer"
}

variable "script_location" {
  description = "Script for Glue ETL process"
}

variable "max_capacity" {
  description = "Maximum capacity for Glue Job process"
  default     = "10"
}

variable "timeout" {
  description = "Timeout value set for Glue job process"
  default     = "60"
}

variable "max_concurrent" {
  description = "Maximum concurrent runs for Glue job"
  default     = "1"
}

variable "connections" {
  type = "list"
  description = "DB connections for Glue job"
}

variable "TempDir" {
  description = "Temperory Directory which Glue process is using for ETL process"
}

variable "extra-jars" {
  description = "JDBC jar file location to establish connection with Informix DB"
}

variable "encryption-type" {
  description = "Encryption Type"
  default = "sse-s3"
}

variable "owner-createdby" {
  description = "Owner for this environment"
}

variable "owner-data" {
  description = "Owner data for this environment"
}

variable "owner-infra" {
  description = "Owner infra for this environment"
}

variable "project-name" {
  description = "Project Name"
}

variable "project-subprojectname" {
  description = "Sub project name"
}

variable "project-wbscode" {
  description = "WBS code for this project"
}

variable "technical_owner" {
  description = "Technical Owner for this environment"
}

variable "billing_code" {
  description = "Billing code for this environment"
}

variable "compliance" {
  description = "Compliance for this environment"
}
