FROM arm32v6/alpine:3.7
RUN apk add --no-cache bash
RUN wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-armv6.tar.gz
RUN tar -xvf node_exporter-0.18.1.linux-armv6.tar.gz
ENTRYPOINT ["node_exporter-0.18.1.linux-armv6/node_exporter"]