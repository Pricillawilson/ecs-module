variable "ecs-cluster-name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "microservices-ecs-cluster"
}

variable "ecs_task_execution_role_name" {
  default     = "EcsTaskExecutionRole"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

