resource "aws_instance" "web1" {
    ami = "ami-0b898040803850657"
    instance_type = "t2.micro"
    key_name = "${aws_keypai.terraform-key}"
    security_groups = ["${aws_security_group.sec1.id}"]
    tags = {
        name = "dev"
        dept = "it"
        group = "april"
        created_by = "levent"
    }

}