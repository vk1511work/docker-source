FROM --platform=linux/amd64 centos:7.8.2003

#for apache
EXPOSE 8080
#for xdebug
EXPOSE 9000

RUN set -x
RUN set +e

SHELL ["/bin/bash", "-c"]

RUN yum clean all

RUN yum install -y sudo rsync deltarpm httpd

RUN yum install -y php-pecl-xdebug php74-php-pecl-xdebug3 \
    php \
    php-xml \
    php-mbstring

RUN if [ ! -L  /usr/lib64/php/modules/xdebug.so ] ;then   mv /usr/lib64/php/modules/xdebug.so /usr/lib64/php/modules/xdebug.so.bak;  ln -s  /opt/remi/php74/root/usr/lib64/php/modules/xdebug.so  /usr/lib64/php/modules/xdebug.so; fi

RUN yum  install -y kernel kernel-devel

