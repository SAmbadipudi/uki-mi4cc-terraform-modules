resource "aws_glue_job" "uki-dev-glue-mi4cc-avaya" {
 count = "${length(var.jobnames)}"
 name     = "${var.jobnames[count.index]}"
 role_arn = "${var.arn}"

  command {
    script_location = "${var.script_location}"
  }
  max_capacity       = "${var.max_capacity}"
  timeout            = "${var.timeout}"
  execution_property {
       max_concurrent_runs = "${var.max_concurrent}"
  }
  connections = "${var.connections}"
  default_arguments = {
    "--TempDir" = "${var.TempDir}"
    "--extra-jars" = "${var.extra-jars}"
    "--encryption-type" = "${var.encryption-type}"
  }
 tags = {
      Name                = "${var.jobnames[count.index]}"
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
