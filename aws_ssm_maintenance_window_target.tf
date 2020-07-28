resource "aws_ssm_maintenance_window_target" "patching_window_target" {
  window_id     = aws_ssm_maintenance_window.patching_window.id
  resource_type = "INSTANCE"

  targets {
    key    = "environment"
    values = [var.environment]
  }
//  targets {
//    key    = "InstanceIds"
//    values = ["i-00afa84d926734d0e"]
//
//  }
}

