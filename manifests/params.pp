class lmmsweb::params {
  case $::osfamily {
    Debian: {
      $apache_package_name = 'apache2'
      $apache_service_name = 'apache2'
      $vhost_conf_template = 'lmmsweb/localise.mapofmedicine.com.conf.erb'
      $sites_enabled_directory = "/etc/apache2/sites-enabled"
    }
    RedHat: {
      $apache_package_name = 'httpd'
      $apache_service_name = 'httpd'
      $vhost_conf_template = 'lmmsweb/localise.mapofmedicine.com.conf.erb'
      $sites_enabled_directory = "/etc/httpd/sites-enabled"
    }
    default: {
      fail("lmmsweb doesn't support osfamily - $::osfamily")
    }
  }
}