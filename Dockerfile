FROM louislam/uptime-kuma:1.23.16
RUN apt update
RUN apt --yes install python3
RUN apt-get install python3-setuptools
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir paho-mqtt==1.6.1
