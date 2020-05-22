#resource "aws_instance" "imdjango_3a" {
#ami = "${var.ubuntu}"
#availability_zone = "eu-west-3a"
#instance_type = "t2.nano"
#key_name = "${var.keyname}"

#vpc_security_group_ids =[
#"${aws_security_group.imdjango.id}",
#"${aws_default_security_group.sg14.id}",
#]

#subnet_id = "${aws_subnet.subnet14_3a.id}"
#associate_public_ip_address = true
#tags = {
#Name = "imdjango_3a"
#}
#}
