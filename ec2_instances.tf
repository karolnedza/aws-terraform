resource "aws_instance" "web-rvbd" {
  count                  = "${var.instance_count}"
  ami                    = "${data.aws_ami.ami_image.name}"
  instance_type          = "t2.micro"
  subnet_id              = "${element(aws_subnet.subnet.*.id,count.index % var.subnet_count)}"
  vpc_security_group_ids = ["${aws_security_group.DMZ.id}"]
  key_name               = "${var.key_name}"

  connection {
    user        = "ec2-user"
    host = "$self.public_ip"
    private_key = "${file(var.private_key_path)}"
  }
}
