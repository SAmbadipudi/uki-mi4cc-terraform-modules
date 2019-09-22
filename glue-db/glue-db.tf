resource "aws_glue_connection" "uki-dev-glue-con-mi4cc-avaya" {
  connection_properties = {
    JDBC_CONNECTION_URL = "${var.jdbc-url}"
    PASSWORD            = "${var.db-password}"
    USERNAME            = "${var.db-username}"
    JDBC_ENFORCE_SSL    = "${var.require-ssl}"
  }

  name = "${var.glue-conn-name}"

  physical_connection_requirements {
    availability_zone      = "${var.avail-zone}"
    security_group_id_list = "${var.seg-id}" 
    subnet_id              = "${var.sub-id}"
  }
  
  tags = {
      Name                = "${var.cloudwatch_event_rule_name}"
      Owner-CreatedBy	  = "${var.owner-createdby}"
      Owner-Data	  = "${var.owner-data}"
      Owner-Infra         = "${var.owner-infra}"
      Project-Name        = "${var.project-name}"
      Project-SubProjectName = "${var.project-subprojectname}"
      Project-WBSCode	  = "${var.project-wbscode}"
      TechnicalOwner      = "${var.technical_owner}"
      Environment         = "${lower(terraform.workspace)}"
      BillingCode         = "${var.billing_code}"
      Compliance          = "${var.compliance}"
    }
}
