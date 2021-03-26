# Provider

provider "aws" {
  version = "~> 2.7"

}

# Create EC2 Test instance
resource "aws_instance" "test-instance" {
  key_name = ""
  subnet_id = ""
  ami = "ami-0201da6fcc88dd20a"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  disable_api_termination = "false"
  monitoring = "false"
  vpc_security_group_ids = ["${aws_security_group.test-sg.id}"]
  tags = {
    Name = "test-instance"
  }
}

# Create Test SG
resource "aws_security_group" "test-sg" {
    vpc_id      = ""
    name = "test-sg"
    description = "Test Security group"
    tags = {
        Name = "test-sg"
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
      from_port = -1
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
    }
}
