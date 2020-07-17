FROM alpine:latest

ENV workspace /var/www/localhost/htdocs/ 
WORKDIR ${workspace}
ARG whoami=Jimmy
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>I am ${whoami}, job 1 </h3>" >> index.html
RUN echo "<h3>I am ${whoami}, job 2 </h3>" >> index.html
RUN echo "<h3>I am ${whoami}, job 3 </h3>" >> index.html
COPY ./content.txt ./
RUN ls -l ./
RUN cat ./content.txt >> index.html
ENTRYPOINT ["httpd","-D","FOREGROUND"]