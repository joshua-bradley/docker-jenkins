FROM jenkins/jenkins:2.107.1-slim
LABEL maintainer "Joshua Bradley <josh@joshuabradley.io>"

ARG ENV_TZ=America/Los_Angeles
ENV JENKINS_TZ=$ENV_TZ
RUN ln -snf /usr/share/zoneinfo/$JENKINS_TZ /etc/localtime && echo $JENKINS_TZ > /etc/timezone

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
