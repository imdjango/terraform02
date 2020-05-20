resource "aws_alb_listener" "http" {
load_balancer_arn = "${aws_alb.alb14eu.arn}"
port = "80"
protocol = "HTTP"

default_action {
target_group_arn ="${aws_alb_target_group.frontend14eu.arn}"
type = "forward"
}
}
