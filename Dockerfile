# dev_env.esp8266 - Development environment of caOS Device System for ESP8266 chips
# (c) 2022 Star Inc. (https://starinc.xyz)
# License: MIT

FROM debian:11

RUN apt-get update && apt-get install -y git curl flex bison gperf ncurses-dev build-essential python-is-python2
RUN git clone https://github.com/espressif/ESP8266_RTOS_SDK.git /esp
RUN curl -sSL https://bootstrap.pypa.io/pip/2.7/get-pip.py | python -
RUN cd /esp && git checkout release/v3.4 && ./install.sh 

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENV IDF_PATH /esp

ENTRYPOINT "/entrypoint.sh"
