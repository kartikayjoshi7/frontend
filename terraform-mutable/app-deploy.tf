resource "null_resource" "app-deploy" {
  count = length(aws_spot_instance_request.ec2-spot)
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["SSH_USERNAME"]
      password = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["SSH_PASSWORD"]
      host     = aws_spot_instance_request.ec2-spot.*.private_ip[count.index]
    }
    inline = [
      "ansible-pull -U https://github.com/kartikayjoshi7/ansible.git roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=${var.ENV} -e APP_VESION=${var.APP_VERSION}"

    ]
  }
}
