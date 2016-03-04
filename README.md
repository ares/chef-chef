Description
===========

Configure chef-client

Requirements
============

No requirements known, it expects chef-client to be installed via system rubygems. 

Attributes
==========

The whole configuration is stored in chef-client attribute which is a hash and can contain
following configuration options:
  * foreman_hook - should the foreman integration be configured
  * foreman_upload_url - smart proxy url for sending data
  * foreman_facts_upload - send facts to foreman
  * foreman_reports_upload - send reports to foreman
  * splay - what's the splay time
  * minute - which minute to setup in cron
  * chef_client_bin - path to chef-client script

Usage
=====

Simply include chef cookbook to your runlist
