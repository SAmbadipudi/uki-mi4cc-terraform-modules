output "glue-db-conn-name" {
  value = "${aws_glue_connection.uki-dev-glue-con-mi4cc-avaya.*.name}"
}
