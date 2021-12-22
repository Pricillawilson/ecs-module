### Security group for ecs tasks

resource "aws_security_group" "ecs_tasks_security_group" {
    name   = "app-ecs-tasks-security-group"
    vpc_id = ###vpc

    #inbound traffic 
    ingress {
        protocol        = "tcp"
        from_port       = var.app_port
        to_port         = var.app_port
        security_groups = [###alb security id]
    }

    #outbound traffic
    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}