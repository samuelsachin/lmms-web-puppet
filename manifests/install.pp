class lmmsweb::install {
  include lmmsweb::params
  package { [$::lmmsweb::params::apache_package_name, $lmmsweb::params::apacheutils_package_name, 'logrotate']:
    ensure => present,
  }
}