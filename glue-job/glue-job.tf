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
 
}
