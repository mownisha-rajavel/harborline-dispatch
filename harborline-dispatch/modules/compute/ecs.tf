resource "aws_ecs_cluster" "dispatch" {
  name = "harborline-dispatch"
}

resource "aws_ecs_service" "api" {
  name            = "harborline-api"
  cluster         = aws_ecs_cluster.dispatch.id
  desired_count   = 2
  task_definition = "harborline-api"
}
