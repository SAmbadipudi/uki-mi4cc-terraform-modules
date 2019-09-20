resource "aws_secretsmanager_secret" "uki-dev-sm-mi4cc-avaya-connection-info" {
  name = "${var.secret-mangr-name}"
}

resource "aws_secretsmanager_secret_version" "uki-dev-sm-mi4cc-avaya-key-values" {
  secret_id     = "${aws_secretsmanager_secret.uki-dev-sm-mi4cc-avaya-connection-info.id}"
  secret_string = "${jsonencode(var.values-stored)}"
}
