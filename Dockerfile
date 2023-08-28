FROM centos:latest
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/troweld.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip troweld.zip
RUN cp -rvf troweld-html/* .
RUN rm -rf troweld-html troweld.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
