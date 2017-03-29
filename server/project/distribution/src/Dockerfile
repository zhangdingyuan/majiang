FROM java:openjdk-8-jdk

COPY package.tgz /tmp

RUN mkdir /usr/src/myapp && tar -xvf /tmp/package.tgz -C /usr/src/myapp
RUN rm /tmp/package.tgz

WORKDIR /usr/src/myapp

EXPOSE 8010
EXPOSE 8080
EXPOSE 9090
CMD ["./startup.sh"]


