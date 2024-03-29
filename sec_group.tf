resource "aws_security_group" "sec1" {
  name        = "sec1"
  description = "Allow ssh"
  vpc_id      = "vpc-b456cbce"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
        name = "dev"
        dept = "it"
        group = "april"
        created_by = "levent"
    }
}