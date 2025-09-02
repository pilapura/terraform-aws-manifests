variable "cidr_block" {
    description = "provide CIDR value with /16 subnet from class A network"
	type = string
	default = "10.250.0.0/16"
}

variable "dns_support" {
    description = "provide true/false to cofigure DNS for network, default: true"
	type = bool
	default = true
}

variable "dns_hostnames" {
    description = "Cofigure hostnames for resources in VPC network, default: true"
	type = bool
	default = true
}

variable "vpc_tags" {
    description = "Set tags for VPC network"
	type = map(string)
	default = {
	  "Name"        = "TerraformDemo"
	}
}