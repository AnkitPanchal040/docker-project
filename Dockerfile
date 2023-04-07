FROM centos:centos7.9.2009
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/restoran.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip frica.zip
RUN cp -rvf html/* .
RUN rm -rf html frica.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80 8080 22
