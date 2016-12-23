docker-openvpn
====================

OpenVPN application in docker.

You can provide it with configs and run it with extended privileges to change your host machine's network interfaces:
```
docker run -d --cap-add=NET_ADMIN \
  --device /dev/net/tun \
  --net=host \
  -v /data/config:/etc/openvpn/config \
  --name openvpn-client \
  varsy/openvpn --config /etc/openvpn/config/config.ovpn
  ```

Add your configs to `/data/config` folder on your host machine.