# dev_env.esp8266 - Development environment of caOS Device System for ESP8266 chips
# (c) 2022 Star Inc. (https://starinc.xyz)
# License: MIT

FROM debian:11

RUN apt-get install -y git

CMD ["bash"]
