#creating vpc
resource "aws_vpc" "vpc"{
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "${var.vpc_name}-vpc"
    }
}

#create subnet-1
resource "aws_subnet" "subnet_1" {
    count = length(var.subnet_1_cidrs)
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_1_cidrs[count.index]
    availability_zone = var.subnet_1_azs[count.index]
    map_public_ip_on_launch = true
    tags = {
        Name = "${var.vpc_name}-subnet-1"
    }
}
    
#create subnet-2
resource "aws_subnet" "subnet_2" {
    count = length(var.subnet_2_cidrs)
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_2_cidrs[count.index]
    availability_zone = var.subnet_2_azs[count.index]
    map_public_ip_on_launch = true
    tags = {
        Name = "${var.vpc_name}-subnet-2"
    }
}

#creating igw
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
}

#creating Route table
resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "${var.vpc_name}-public-route-table"
    }
}


#creating the route
resource "aws_route" "public_route" {
    route_table_id = aws_route_table.public_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}

#routetable associations
resource "aws_route_table_association" "public_subnet_associations" {
    count = length(var.subnet_1_cidrs)
    subnet_id = aws_subnet.subnet_1[count.index].id
    route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_associations_2" {
    count = length(var.subnet_2_cidrs)
    subnet_id = aws_subnet.subnet_2[count.index].id
    route_table_id = aws_route_table.public_route_table.id
}
