resource "aws_launch_configuration" "web14" {
  name_prefix = "user14-autoscaling-web"

  image_id = "${var.ubuntu}"
  instance_type = "t2.nano"
  key_name = "${var.keyname}"
  security_groups = [
    "${aws_security_group.alb14.id}",
    "${aws_default_security_group.sg14.id}",
  ]
  associate_public_ip_address = true
    
  user_data = <<USER_DATA
#!/bin/bash
sudo -i
apt update
apt -y install nginx
echo "<html><h1> congrats!!! </h1><img src=https://d35ucptlotz8t6.cloudfront.net/imdjango.jpeg></html>" > /var/www/html/index.nginx-debian.html
systemctl start nginx
  USER_DATA

  lifecycle {
    create_before_destroy = true
  }
}

## 이미지 소스 cloudfron 변경