# Dockerfile
FROM centos:7
MAINTAINER "John Hazelwood" <jhazelwo@users.noreply.github.com>
RUN yum clean all && \
  yum -y upgrade && \
  yum -y install which yum-utils tar && \
  yum -y install https://yum.puppetlabs.com/el/7/PC1/x86_64/puppet-agent-1.5.0-1.el7.x86_64.rpm && \
  yum -y install rubygems git rsync wget unzip && \
  /usr/bin/gem install --no-ri --no-rdoc puppet-lint

RUN /opt/puppetlabs/bin/puppet module install puppetlabs-stdlib

