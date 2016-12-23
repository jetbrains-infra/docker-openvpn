FROM alpine
RUN apk add --update openvpn
ENTRYPOINT ["/usr/sbin/openvpn"]
