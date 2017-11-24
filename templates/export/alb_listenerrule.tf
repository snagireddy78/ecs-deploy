resource "aws_alb_listener_rule" "${SERVICE}-rule-${LISTENER_PRIORITY}" {
  listener_arn = "${LISTENER_ARN}"
  priority = ${LISTENER_PRIORITY}

  action {
    type = "forward"
    target_group_arn = "${aws_alb_target_group.${SERVICE}.arn}"
  }
  ${LISTENER_CONDITION_RULE}
}
