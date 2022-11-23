# ----------------------------------------------------------------------------------------------------------------------
# CloudAlarms Specific Variables
# ----------------------------------------------------------------------------------------------------------------------
cw_alarms = {
  # ==================================================== EC2 ALARMS ====================================================
  # ==================================================== Squid Proxy 01 Alarms ====================================================
  "cpu_utilization_high_squid_proxy_01" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-cpu-high-squid-proxy-01"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-cpu-utilization"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_01"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "CPUUtilization"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
    "mem_used_high_squid_proxy_01" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-mem-high-squid-proxy-01"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-memory-usage"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_01"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "mem_used_percent"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
    "disk_space_used_high_squid_proxy_01" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-disk-space-used-high-squid-proxy-01"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-disk-space-usage"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_01"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "disk_used_percent"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
# ==================================================== Squid Proxy 02 Alarms ====================================================
  "cpu_utilization_high_squid_proxy_02" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-cpu-high-squid-proxy-02"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-cpu-utilization"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_02"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "CPUUtilization"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
    "mem_used_high_squid_proxy_02" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-mem-high-squid-proxy-02"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-memory-usage"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_02"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "mem_used_percent"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
    "disk_space_used_high_squid_proxy_02" = {
    create_standard_cw_alarms = true
    alarm_name                = "instance-disk-space-used-high-squid-proxy-02"
    alarm_description         = "alarm-for-when-an-instance-reaches-more-than-80%-disk-space-usage"
    alarm_actions             = "instance_overload"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = "1"
    dimensions_instance       = "squid_proxy_02"
    evaluation_periods        = "1"
    insufficient_data_actions = []
    metric_name               = "disk_used_percent"
    namespace                 = "AWS/EC2"
    period                    = "60"
    statistic                 = "Average"
    treat_missing_data        = "missing"
    threshold                 = "80"
  }
}