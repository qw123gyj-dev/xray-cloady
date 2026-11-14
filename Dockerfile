FROM alpine:3.20
RUN apk add --no-cache ca-certificates curl unzip
WORKDIR /tmp
RUN curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
 && unzip -o xray.zip xray -d /usr/local/bin/ \
 && rm -f xray.zip \
 && chmod +x /usr/local/bin/xray
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
