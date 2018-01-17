FROM jenkins/jenkins:2.102-slim
LABEL maintainer "Joshua Bradley <josh@joshuabradley.io>"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
