resource "aws_alb" "alb14eu" {
name = "alb14eu"
internal = false
security_groups= ["${aws_security_group.alb14eu.id}"]
subnets = [
"${aws_subnet.subnet14eu_3a.id}",
"${aws_subnet.subnet14eu_3b.id}"
]

access_logs {
bucket = "${aws_s3_bucket.alb14eu.id}"
prefix = "frontend-alb"
enabled = true
}

tags = {
Name = "alb14"
}

lifecycle {create_before_destroy = true}
}
