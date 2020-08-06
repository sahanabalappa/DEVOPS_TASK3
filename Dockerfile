FROM centos:7
RUN yum install httpd -y
RUN yum install php -y
RUN yum install /sbin/service/ -y
RUN yum net-tools -y
EXPOSE 80
CMD /usr/sbin/httpd -DEFOREGROUND && /bin/bash
