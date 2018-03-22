FROM alpine:3.7
RUN apk --no-cache add openvpn~2.4
ENTRYPOINT ["/usr/sbin/openvpn"]
HEALTHCHECK --interval=5s --retries=10 CMD ifconfig tun0
