resource "aws_sns_topic" "cloudwatch-sns-topic" {
  name = "${var.sns-topic-name}"
  display_name = "${var.sns-topic-name}"
  delivery_policy = "${var.delivery-policy-file}"
  provisioner "local-exec" {
    command = "sleep 5"
  }
}

resource "aws_sns_topic_policy" "cloudwatch-sns-topic-pliocy" {
  arn = "${aws_sns_topic.cloudwatch-sns-topic.arn}"
  policy = "${var.policy-file}"
  depends_on = ["aws_sns_topic.cloudwatch-sns-topic"]
}
