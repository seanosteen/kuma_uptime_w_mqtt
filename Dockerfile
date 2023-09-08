FROM louislam/uptime-kuma:latest
RUN apt update
RUN apt --yes install python3
RUN apt-get install python3-setuptools
RUN pip3 install --no-cache --upgrade pip paho-mqtt
