output "vpc_id" {
  value = aws_vpc.tf-project-vpc.id
}

output "web-subnet" {
  value = aws_subnet.web-subnet
}

output "web-subnet-availability_zone_names" {
  value = random_shuffle.shuffle-az.result
}

output "app_subnet_ids" {
  value = data.aws_subnets.app_subnets.ids
}