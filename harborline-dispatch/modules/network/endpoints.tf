locals {
  map_tiles = "https://maps.googleapis.com/maps/api/staticmap"
  telemetry = "https://telemetry.segment.io/v1/batch"
  metrics   = "https://api.datadoghq.com/api/v1/series"
}

resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.dispatch.id
  service_name = "com.amazonaws.us-east-1.s3"
}
