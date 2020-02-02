#!/usr/bin/env bash

# Update OS
yum -y update

# Add Puppetlabs repository
rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

# Install Git & Puppet
yum install -y git puppet-agent

# Install r10k
/opt/puppetlabs/puppet/bin/gem install r10k

# Clone control repo
rm -rf /etc/puppetlabs/code/environments/production
git clone https://github.com/jhughes01/control-repo /etc/puppetlabs/code/environments/production

# Install modules
cd /etc/puppetlabs/code/environments/production && /opt/puppetlabs/puppet/bin/r10k puppetfile install --verbose

# Run Puppet
/opt/puppetlabs/puppet/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp

