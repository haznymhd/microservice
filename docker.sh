FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
sudo RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
sudo RUN unzip photogenic.zip
sudo RUN cp -rvf photogenic/* .
sudo RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22