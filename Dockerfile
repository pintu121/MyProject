FROM centos:latest
MAINTAINER liveodia.in@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/heustonn.zip /var/www/html
WORKDIR /var/www/html
RUN unzip heustonn.zip
RUN cp -rvf heustonn/* .
RUN rm -rf heustonn heustonn.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80