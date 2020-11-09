FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y -y python3-pip libssl-dev
RUN python3 -m pip install "molecule[ansible]"
RUN python3 -m pip install --user "molecule[docker,lint]"
USER jenkins
