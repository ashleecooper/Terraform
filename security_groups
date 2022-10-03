# Create VPC Security Groups
resource "aws_security_group" "publicsg_acoop18" {
  name        = "publicsg_acoop18"
  description = "Allow traffic from VPC"
  vpc_id      = aws_vpc.acoop18.id
  depends_on = [
    aws_vpc.acoop18
  ]

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
  }
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPC_acoop18"
  }
}

# Create security group for ALB
resource "aws_security_group" "alb_sg_acoop18" {
  name        = "alb_sg_acoop18"
  description = "security group for the load balancer"
  vpc_id      = aws_vpc.acoop18.id
  depends_on = [
    aws_vpc.acoop18
  ]


  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "alb_sg_acoop18"
  }
}
