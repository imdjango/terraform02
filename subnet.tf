resource "aws_subnet" "subnet14eu_3a" {
vpc_id = "${aws_vpc.vpc14eu.id}"
availability_zone = "eu-west-3a"
cidr_block = "114.0.1.0/24"
tags = {
Name = "subnet14eu_3a"
}
}

resource "aws_subnet" "subnet14eu_3b" {
vpc_id = "${aws_vpc.vpc14eu.id}"
availability_zone = "eu-west-3b"
cidr_block = "114.0.2.0/24"
tags = {
Name = "subnet14eu_3b"
}
}
