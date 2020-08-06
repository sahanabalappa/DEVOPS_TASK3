FROM centos:7
RUN yum install wget -y
RUN yum install git -y
RUN yum install sudo -y
RUN yum install net-tools -y
RUN wget https://pkg.jenkins.io/redhat-stable/jenkins.repo -O /etc/yum.repos.d/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN  yum makecache -y
RUN yum install jenkins -y
RUN yum install java-11-openjdk.x86_64 -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN yum install /sbin/service -y
CMD sudo service jenkins start -DEFOREGROUND && /bin/bash
EXPOSE 8080
#For SSH Connection between Container and Base OS RHEL 8.
RUN yum install epel-release -y
RUN yum install sshpass -y
