# harborline-dispatch

Terraform for Harborline Dispatch, a field-crew work-order service.

This repository is a scan fixture. Push it to GitHub, then add that `https://github.com/.../harborline-dispatch` link in TGGS. The clone folder name becomes the project name, so keep the repository name `harborline-dispatch`.

Expected result: **Level 2, Conditional Approval, Pass with warnings.**

- High: outbound calls to `maps.googleapis.com` and `telemetry.segment.io` (SA-9), and a KMS key with rotation off (SC-12).
- Medium: two CloudWatch log groups kept under 90 days (AU-11), and the uploads bucket without versioning (CM-2).
- Encryption, private database access, security groups, public-access block, and the HTTPS listener stay clean, so nothing is critical.
