FROM alpine:3.7
RUN apk --no-cache add openvpn~2.4
ENTRYPOINT ["/usr/sbin/openvpn"]
