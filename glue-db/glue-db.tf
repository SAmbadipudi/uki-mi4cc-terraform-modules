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
}
