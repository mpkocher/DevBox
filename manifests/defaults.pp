# Hacky way to call apt-get update and upgrade before running the rest of the install
stage { 'preinstall':
  before => Stage['main']
}
 
class apt_get_update {
  exec { '/usr/bin/apt-get -y update': }
}
 
class { 'apt_get_update':
  stage => preinstall
}

# Core install
group { "puppet":
  	ensure => "present",
}

File { owner => 0, group => 0, mode => 0644 }
   
file { '/etc/motd':
	content => "Welcome to your Vagrant-built virtual machine! Managed by Puppet.\n"
}

package {'build-essential': ensure => present, }
package {'tree': ensure => present, }
package {'ruby': ensure => present, }
package {'ruby-dev': ensure => present, }
package {'rubygems': ensure => present,  }
package {'python': ensure => present, }
package {'python-setuptools': ensure => present, }
package {'screen': ensure => present, }
package {'tmux': ensure => present, }
package {'vim': ensure => "installed" }
package {'emacs': ensure => "installed" }

package {'git': ensure => present, }
package { 'gcc-4.4': ensure => present, }
package { 'gfortran-4.4': ensure => present, }
package { 'g++-4.4': ensure => present, }
package { 'bison': ensure => present, }
package { 'make': ensure => present, }
package { 'pax': ensure => present, }
package { 'file': ensure => present, }
package { 'flex': ensure => present, }
package { 'gfortran': ensure => present, }
package { 'openjdk-6-jdk': ensure => present, }
package { 'rsync': ensure => present, }
package { 'libbz2-dev': ensure => present, }
package { 'libcairo-dev': ensure => present, }
package { 'libjpeg-dev': ensure => present, }
package { 'libncurses-dev': ensure => present, }
package { 'libpango1.0-dev': ensure => present, }
package { 'libpcre3-dev': ensure => present, }
package { 'libpng12-dev': ensure => present, }
package { 'zlib1g-dev': ensure => present, }
package {'h5utils': ensure => present, }
package {'libhdf5-serial-dev': ensure => present, }
package {'r-base': ensure => present, }
package {'r-base-core': ensure => present, }
package {'r-base-dev': ensure => present, }
