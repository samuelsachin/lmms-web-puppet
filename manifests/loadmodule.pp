define lmmsweb::loadmodule {
  
  include lmmsweb::params
  
  exec { "$::lmmsweb::params::a2enmod $name":
    unless => "$::lmmsweb::params::readlink -e $lmmsweb::params::mods_enabled_directory/${name}.load",
    notify => Lmmsweb::Service::Service['$::lmmsweb::params::apache_service_name'],    
  }

}