FROM louislam/uptime-kuma:1-alpine

RUN  pip3 install setuptools wheel && \ 
     pip3 install --no-cache-dir paho-mqtt
