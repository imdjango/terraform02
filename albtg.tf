resource "aws_alb_target_group" "frontend14eu" {
name = "frontend-target-group14"
port = 80
protocol = "HTTP"
vpc_id = "${aws_vpc.vpc14eu.id}"

health_check {
interval = 30
path = "/ping"
healthy_threshold = 3
unhealthy_threshold = 3
}

tags = { Name = "Frontend Target Group 14" }
}
resource "aws_alb_target_group_attachment" "frontend-3a" {
target_group_arn = "${aws_alb_target_group.frontend14eu.arn}"
target_id = "${aws_instance.imdjango_3a.id}"
port = 80
}

resource "aws_alb_target_group_attachment" "frontend-3b" {
target_group_arn = "${aws_alb_target_group.frontend14eu.arn}"
target_id = "${aws_instance.imdjango_3b.id}"
port = 80
}
