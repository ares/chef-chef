name             'chef'
maintainer       'Ares'
maintainer_email 'ar3s.cz@gmail.com'
license          'All rights reserved'
description      'Configures chef client'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.4'

attribute 'chef_client',
          :display_name => 'Chef client options',
          :description => 'Hash with chef-client options',
          :type => 'hash',
          :required => 'recommended'
