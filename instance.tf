resource "aws_instance" "web1" {
    ami = "ami-0b898040803850657"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    tags = {
        name = "dev"
        dept = "it"
        group = "april"
        created_by = "levent"
    }

}