resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.az
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    { Name = "${var.project}-public-subnet" }
  )
}

resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.az

  tags = merge(
    var.common_tags,
    { Name = "${var.project}-private-subnet" }
  )
}
