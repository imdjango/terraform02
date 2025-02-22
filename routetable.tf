resource "aws_route_table" "rt14" {
vpc_id = "${aws_vpc.vpc14.id}"
route {
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.gateway14.id}"
}
# peering시 주석 제거 및 cidr 변경 gateway id 확인
# route {
# cidr_block = "14.0.0.0/16"
# gateway_id = "pcx-0e02c11494378a38c"
# }
tags = {
Name = "rt14"
}
}

resource "aws_route_table_association" "rt14_3a" {
subnet_id = "${aws_subnet.subnet14_3a.id}"
route_table_id = "${aws_route_table.rt14.id}"
}
resource "aws_route_table_association" "r14_3b" {
subnet_id = "${aws_subnet.subnet14_3b.id}"
route_table_id = "${aws_route_table.rt14.id}"
}


