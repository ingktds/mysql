FROM centos:latest
MAINTAINER ingktds <tadashi.1027@gmail.com>

ADD setup.sh /usr/local/bin/setup.sh
ADD mysql57-community-release-el7-8.noarch.rpm /usr/local/src/mysql57-community-release-el7-8.noarch.rpm
RUN /usr/local/bin/setup.sh

EXPOSE 3306
CMD [ '/usr/bin/supervisord', '-n' ]