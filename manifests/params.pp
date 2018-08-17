class ntp::params {
  $package_name  = 'ntp'
  $package_ensure = 'present'
  $config_name   = 'ntp.conf'
  $config_file_mode = '0664'
  $servers = ['pakaya', 'vesi', 'hutto']
  $service_ensure = 'running'
  $service_enable = true
  $service_hasstatus = true
  $service_hasrestart = true

  $service_name = $facts['os']['family'] ? {
    'Debian' => 'ntp',
    default  => 'ntpd',
  }
}
