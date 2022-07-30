resource "aws_spot_instance_request" "ec2-spot" {
  count = var.INSTANCE_COUNT
  ami           = data.aws_ami.ami.id
  instance_type = var.INSTANCE_TYPE

  tags = {
    Name = "${var.COMPONENT}-${var.ENV}-${count.index+1}"
  }
}