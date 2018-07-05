#
# Datadog global variables
#
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
  default     = 900
}

#
# Filter variables
#
variable "project_id" {
  type        = "string"
  description = "ID of the GCP Project"
}

#
# CPU
#
variable "cpu_utilization_message" {
  description = "Custom message for the CPU Utilization monitor"
  type        = "string"
  default     = ""
}

variable "cpu_utilization_timeframe" {
  description = "Timeframe for the CPU Utilization monitor"
  type        = "string"
  default     = "last_30m"
}

variable "cpu_utilization_threshold_warning" {
  description = "CPU Utilization in fraction (warning threshold)"
  type        = "string"
  default     = 0.8
}

variable "cpu_utilization_threshold_critical" {
  description = "CPU Utilization in fraction (critical threshold)"
  type        = "string"
  default     = 0.9
}

variable "cpu_utilization_silenced" {
  description = "Groups to mute for GCP Cloud SQL CPU Utilization monitor"
  type        = "map"
  default     = {}
}

variable "cpu_utilization_extra_tags" {
  description = "Extra tags for GCP Cloud SQL CPU Utilization monitor"
  type        = "list"
  default     = []
}

#
# DISK
#
variable "disk_utilization_message" {
  description = "Custom message for the Disk Utilization monitor"
  type        = "string"
  default     = ""
}

variable "disk_utilization_timeframe" {
  description = "Timeframe for the Disk Utilization monitor"
  type        = "string"
  default     = "last_5m"
}

variable "disk_utilization_threshold_warning" {
  description = "Disk Utilization in fraction (warning threshold)"
  type        = "string"
  default     = 0.8
}

variable "disk_utilization_threshold_critical" {
  description = "Disk Utilization in fraction (critical threshold)"
  type        = "string"
  default     = 0.9
}

variable "disk_utilization_silenced" {
  description = "Groups to mute for GCP Cloud SQL Disk Utilization monitor"
  type        = "map"
  default     = {}
}

variable "disk_utilization_extra_tags" {
  description = "Extra tags for GCP Cloud SQL CPU Utilization monitor"
  type        = "list"
  default     = []
}

#
# Memory Utilization
#
variable "memory_utilization_message" {
  description = "Custom message for the Memory Utilization monitor"
  default     = ""
}

variable "memory_utilization_timeframe" {
  description = "Timeframe for the Memory Utilization monitor"
  default     = "last_5m"
}

variable "memory_utilization_threshold_warning" {
  description = "Memory Utilization in fraction (warning threshold)"
  default     = 0.8
}

variable "memory_utilization_threshold_critical" {
  description = "Memory Utilization in fraction (critical threshold)"
  default     = 0.9
}

variable "memory_utilization_silenced" {
  description = "Groups to mute for GCP Cloud SQL Memory Utilization monitor"
  type        = "map"
  default     = {}
}

variable "memory_utilization_extra_tags" {
  description = "Extra tags for GCP Cloud SQL Memory Utilization monitor"
  type        = "list"
  default     = []
}

#
# Memory Utilization Forecast
#
variable "memory_utilization_forecast_message" {
  description = "Custom message for the Memory Utilization Forecast monitor"
  default     = ""
}

variable "memory_utilization_forecast_timeframe" {
  description = "Timeframe for the Memory Utilization Forecast monitor"
  default     = "next_3d"
}

variable "memory_utilization_forecast_interval" {
  description = "Interval for the Memory Utilization Forecast monitor"
  default     = "30m"
}

variable "memory_utilization_forecast_history" {
  description = "History for the Memory Utilization Forecast monitor"
  default     = "12h"
}

variable "memory_utilization_forecast_threshold_warning" {
  description = "Memory Utilization Forecast in fraction (warning threshold)"
  default     = 0.8
}

variable "memory_utilization_forecast_threshold_critical" {
  description = "Memory Utilization Forecast in fraction (critical threshold)"
  default     = 0.9
}

variable "memory_utilization_forecast_silenced" {
  description = "Groups to mute for GCP Cloud SQL Memory Utilization Forecast monitor"
  type        = "map"
  default     = {}
}

variable "memory_utilization_forecast_extra_tags" {
  description = "Extra tags for GCP Cloud SQL Memory Utilization Forecast monitor"
  type        = "list"
  default     = []
}

#
# Failover Unavailable
#

variable "failover_unavailable_message" {
  description = "Custom message for the Failover Unavailable monitor"
  type        = "string"
  default     = ""
}

variable "failover_unavailable_timeframe" {
  description = "Timeframe for the Failover Unavailable monitor"
  type        = "string"
  default     = "last_5m"
}

variable "failover_unavailable_threshold_critical" {
  description = "Failover Unavailable critical threshold"
  type        = "string"
  default     = 0
}

variable "failover_unavailable_silenced" {
  description = "Groups to mute for GCP Cloud SQL Failover Unavailable monitor"
  type        = "map"
  default     = {}
}

variable "failover_unavailable_extra_tags" {
  description = "Extra tags for GCP Cloud SQL Failover Unavailable monitor"
  type        = "list"
  default     = []
}
