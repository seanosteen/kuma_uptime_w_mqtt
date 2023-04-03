#!/bin/sh
docker buildx build \
	--push --platform linux/amd64 \
	--tag seanosteen/kuma_uptime_w_mqtt:latest .
