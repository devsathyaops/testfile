resource "aws_spot_instance_request" "spot_req" {
  ami           = "ami-098e42ae54c764c35"
  spot_price    = "0.03"
  instance_type = "t2.micro"
  count = "${var.instance_count}"

  tags = {
    key = "Name" 
    value = "${var.server_job}.spot${count.index + 1}"
  }
  #provisioner "local-exec" {
  #    command = "aws ec2 create-tags --resources ${self.spot_instance_id} --tags Key=Name,Value=${var.server_job}-spot-instances-${count.index} --region ${var.aws_region}"
  #}
}
