# Dockerfile
FROM centos:6
MAINTAINER "John Hazelwood" <jhazelwo@users.noreply.github.com>
RUN yum clean all && \
  yum -y upgrade && \
  yum -y install which yum-utils tar && \
  yum -y install https://yum.puppetlabs.com/el/6x/PC1/x86_64/puppet-agent-1.3.5-1.el6.x86_64.rpm && \
  yum -y install rubygems git rsync wget unzip && \
  /usr/bin/gem install --no-ri --no-rdoc puppet-lint

RUN /opt/puppetlabs/bin/puppet module install puppetlabs-stdlib

