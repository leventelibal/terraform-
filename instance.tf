resource "aws_instance" "web1" {
    ami = "${var.ami}"
    instance_type = "${aws_instance_type}"
    key_name = "${aws_key_pair.terraform.key_name}"
    security_groups = ["${aws_security_group.sec1.name}"]

    user_data= "${file("userdata.sh")}"
    
    tags = {
        name = "dev"
        dept = "it"
        group = "april"
        created_by = "levent"
    }

}