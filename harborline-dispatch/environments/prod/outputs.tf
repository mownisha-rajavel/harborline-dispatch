output "service_name" {
  description = "ECS service that runs the dispatch API."
  value       = "harborline-dispatch"
}

output "uploads_bucket" {
  description = "Bucket that stores crew photos and work-order attachments."
  value       = "harborline-dispatch-uploads"
}
