# Based on Alpine
FROM alpine:latest

# Install packages
RUN apk --no-cache add mosquitto 

# Expose MQTT port
EXPOSE 1883

ENV PATH /usr/sbin:$PATH

ENTRYPOINT ["/usr/sbin/mosquitto"]
