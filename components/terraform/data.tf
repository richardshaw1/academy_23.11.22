data "template_file" "s3_full_access_policy_template" {
  template = file("${path.module}/templates/policies/s3_full_access.json")
}
