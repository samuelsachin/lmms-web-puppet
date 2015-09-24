class lmmsweb::install {
  include lmmsweb::params
  package { [$::lmmsweb::params::apache_package_name]:
    ensure => present,
  }
  
  lmmsweb::loadmodule {['rewrite', 'proxy']:
    require => Package[$::lmmsweb::params::apache_package_name],
  }
}