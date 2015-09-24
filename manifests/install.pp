class lmmsweb::install {
  include lmmsweb::params
  package { [$::lmmsweb::params::apache_package_name]:
    ensure => present,
  }
}