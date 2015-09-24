# Class: lmmsweb
#
# This module manages lmmsweb
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#sambu
class lmmsweb {
  include lmmsweb::install
  include lmmsweb::service
  
  
  file {'/var/www/vhosts/lmmsweb.mapofmedicine.com':
    ensure => directory,
    recurse => true,
    mode => '0755',
    owner => 'root',
    group => 'root'
  }
  
  lmmsweb::vhost {'lmmsweb.mapofmedicine.com':
    template => "lmmsweb/localise.mapofmedicine.com.conf.erb",
  }
}
