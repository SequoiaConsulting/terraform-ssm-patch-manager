//variable "application_tag_name" {
//  type        = string
//  description = "Must exactly matchh the application tag present in OSO DevOps common tags list"
//}

variable "environment" {
  type        = string
  description = "Prefix for all IAM roles, policies and resources created to patching module."
  default = "staging"
}

variable "operating_system_filter" {
  default     = "UBUNTU"
  type        = string
  description = "Possible values: AMAZON_LINUX AMAZON_LINUX_2 UBUNTU CENTOS REDHAT_ENTERPRISE_LINUX"
}

variable "patching_name" {
  type        = string
  description = "System name given to patching task: MUST NOT CONTAIN SPACES."
  default = "Ec2-patch"
}

variable "patching_window" {
  type        = string
  default     = "cron(0 /59 * ? * THU *)"
}

variable "patching_duration" {
  type        = number
  default     = 5
}

variable "patching_cutoff" {
  type        = number
  default     = 1
}

variable "patching_enabled" {
  type        = bool
  default     = true
}

variable "schedule_timezone" {
  default     = "Europe/London"
  type        = string
  description = "TimeZone on whihch the patching schedule should be run."
}

variable "ssm_patching_logs_bucket" {
  type        = string
  description = "Bucket name of outputted log information from each automation task run."
  default= "ssm-patch-seq"
}
variable "max_errors" {
  type = string
  description = "Number of errors before task is marked failed"
  default = "3"
}
//variable "common_tags" {
//  type = map(string)
//}

