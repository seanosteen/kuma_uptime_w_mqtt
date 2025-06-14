<p align="center">
   <img alt="Kuma Uptime Plus MQTT" src="Uptime_Kuma_Plus_MQTT.png" />
</p>

# Uptime Kuma, with a hint of MQTT

I love and use [Uptime Kuma](https://github.com/louislam/uptime-kuma), a beautiful systems monitoring application developed by [Louis Lam](https://github.com/louislam).
It has all of the bells and whistles needed to monitor a home lab or a small to medium business network. It even has a robust notification system with tons of integrations.
But in its current form (Q1 2023), container builds do not yet contain the libraries needed to connect to an MQTT broker. That's what this docker image does.

## Usage
```
   docker run -d -v <path_to_your_local_data_folder>:/app/data \
      --restart=unless-stopped
      -v /var/run/docker.sock:/var/run/docker.sock \
      -p 3001:3001 \
      --name kuma-uptime
      seanosteen/kuma_uptime_w_mqtt:latest
```

Once you have your monitors configured you can set up an MQTT publish notification using the Apprise plugin and connecting to your broker with a URL similar to:
```
   mqtt://<username>:<password>@<broker_endpoint>/<topic>
```
More info on all of the container settings can be found [here](https://github.com/louislam/uptime-kuma#-how-to-install). 

## Note on Paho-MQTT Library compatibility.

UptimeKuma v2.0 is currently in beta and this image was meant to be a bridge for using MQTT notifications in version 1.23. As of Uptime Kuma v2.0 beta3, Apprise 1.9.1 and paho-mqtt v2.1 are already part of the official image from Louis Lam. As a result, This image will be depricated by the end of 2025 or when UptimeKuma 2 stable version is released.

As of Uptime Kuma v. 1.23.15 (October 2024), the Apprise library used in this container is not yet compatible with the version 2.0 ( [breaking changes announcement](https://github.com/caronc/apprise/wiki/Notify_mqtt) ). This Dockerfile has been locked at paho-mqtt==1.6.1 until this issue is resolved.

