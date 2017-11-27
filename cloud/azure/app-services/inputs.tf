variable "environment" {
  description = "Architecture environment"
  type        = "string"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

variable "message" {
  description = "Message sent when a monitor is triggered"
}

variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 600
}

###################################
###   RESPONSE TIME VARIABLES   ###
###################################

variable "response_time_threshold_critical" {
  default     = 0.8
  description = "Alerting threshold in seconds"
}

variable "response_time_threshold_warning" {
  default     = 0.4
  description = "Warning threshold in seconds"
}

###################################
###   MEMORY USAGE VARIABLES   ###
###################################

variable "memory_usage_threshold_critical" {
  default     = 52430000
  description = "Alerting threshold in Mib"
}

variable "memory_usage_threshold_warning" {
  default     = 33550000
  description = "Warning threshold in MiB"
}

#################################
###   HTTP 404 status pages   ###
#################################

variable "http_404_errors_count_rate_limit" {
  default = 30
}

variable "http_404_errors_count_rate_threshold_critical" {
  default     = 30
  description = "Alerting threshold (number of requests)"
}

variable "http_404_errors_count_rate_threshold_warning" {
  default     = 10
  description = "Warning threshold (number of requests)"
}

#################################
###   HTTP 202 status pages   ###
#################################

variable "http_2xx_status_rate_limit" {
  default = 30
}

variable "http_2xx_status_rate_threshold_critical" {
  default     = 0.9
  description = "Alerting threshold (percentage)"
}

variable "http_2xx_status_rate_threshold_warning" {
  default     = 0.95
  description = "Warning threshold (percentage)"
}
