FROM    centos:7
RUN     yum install epel-release -y
COPY    mongo.repo  /etc/yum.repos.d/
RUN     yum install mariadb mongodb-org unzip -y
COPY    run.sh /
ENTRYPOINT  ["bash", "/run.sh"]
