class mymodule {
  notify {"This actually did something":}

  # Configure Docroot and index.html
  file { ['/var/www/test2']:
    ensure => directory
 }
}

include mymodule

# Configure Docroot and index.html
file { ['/var/www', '/var/www/test2']:
  ensure => directory
}

