# variables.tf

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app-name" {
  description = "App name of service which is being deployed"
  default = "event-notify-app"
}
variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "dockersk402/helloworld-app:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "lb-port" {
  description = "Port on which lb will listen"
  default     = 80
}
variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}


variable "vpc_id" {
  description = "VPC ID of vpc where you want to launch your services"
  default     = "vpc-00246824b71a51b8f"
}

variable "private_subnet_list" {
  description = "list of private subnets in your vpc where you want to launch your services"
  type = "list"

  default =  [
    "subnet-05a944a20fee6501e",
    "subnet-0b4e3242f176df9ab",
  ]

}

variable "public_subnet_list" {
  description = "list of public subnets in your vpc where you want to launch your services"
  type = "list"

  default = [
    "subnet-056bb40dafff85480",
    "subnet-02c1baf2ed5c49247",
  ]

}