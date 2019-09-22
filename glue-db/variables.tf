variable "jdbc-url" {
  description = "JDBC url to connect with Informix DB"
}

variable "db-password" {
  description = "Password for DB connectivity"
}

variable "db-username" {
  description = "Username for DB connectivity"
}

variable "glue-conn-name" {
  description = "AWS Glue DB connection Name"
}

variable "avail-zone" {
  description = "Availability zone"
}

variable "seg-id" {
  type = "list"
  description = "Security Group values for the external DB connectivity"
}

variable "sub-id" {
  description = "Subnet details which having the port to connect to Informix DB"
}

variable "require-ssl" {
  description = "SSL with hostname matching is enforced for the JDBC connection on the client"
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
