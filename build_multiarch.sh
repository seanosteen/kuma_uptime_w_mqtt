#!/bin/sh
docker buildx build --no-cache\
	--push --platform linux/amd64,linux/arm64,linux/arm/v7 \
	--tag seanosteen/kuma_uptime_w_mqtt:latest .
