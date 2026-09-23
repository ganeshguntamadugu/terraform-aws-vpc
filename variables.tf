#VPC
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "dns_hostnames" {
    default = true
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 Public Subnet cidr"
    }
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 Private Subnet cidr"
    }
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 Database Subnet cidr"
    }
}

#If module user should give values mandatorily we don't keep default in variables like below
variable "project_name" {
    type = string
    #default = ""
}

variable "environment" {
    type = string
    
}

#Optional
#tags
variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tag" {
    default = {}
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnet_group" {
    default = {}
}

variable "eip_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
    type = bool
    default = false
}

variable "peering_tags" { 
    default = {}
}