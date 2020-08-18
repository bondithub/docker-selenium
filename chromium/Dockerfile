FROM python:3.8.5

RUN apt update -y
RUN pip install -U pip

# install google chrome
RUN apt install -y chromium

# install chromedriver
RUN apt install -y chromium-driver

# install selenium server
RUN cd "$HOME" && \
    wget -P /opt/selenium https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar && \
    mv /opt/selenium/selenium-server-standalone-3.141.59.jar /opt/selenium/selenium-server-standalone.jar
RUN apt install -y default-jdk

# install xvfb
RUN apt install -y xvfb
