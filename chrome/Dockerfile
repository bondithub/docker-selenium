FROM python:3.8.5

RUN apt update -y
RUN pip install -U pip

# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt -y update
RUN apt install -y google-chrome-stable

# install chromedriver
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# install selenium server
RUN cd "$HOME" && \
    wget -P /opt/selenium https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar && \
    mv /opt/selenium/selenium-server-standalone-3.141.59.jar /opt/selenium/selenium-server-standalone.jar
RUN apt install -y default-jdk

# install xvfb
RUN apt install -y xvfb
