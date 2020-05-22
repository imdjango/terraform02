resource "aws_alb_target_group" "albtg14" {
name = "alb-target-group14"
port = 80
protocol = "HTTP"
vpc_id = "${aws_vpc.vpc14.id}"

health_check {
interval = 30
path = "/ping"
healthy_threshold = 3
unhealthy_threshold = 3
}

tags = { Name = "alb Target Group 14" }
}
#resource "aws_alb_target_group_attachment" "albtg-3a" {
#target_group_arn = "${aws_alb_target_group.albtg14.arn}"
#target_id = "${aws_instance.imdjango_3a.id}"
#port = 80
#}

#resource "aws_alb_target_group_attachment" "albtg-3b" {
#target_group_arn = "${aws_alb_target_group.albtg14.arn}"
#target_id = "${aws_instance.imdjango_3b.id}"
#port = 80
#}
