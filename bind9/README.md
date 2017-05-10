
deepzz/bind9
==============

> fork from https://github.com/mbentley/docker-bind9

docker image for bind9
based off of alpine:latest

To pull this image:
`docker pull deepzz/bind9`

Example usage, binding to all IPs on the docker host:
`docker run -d -p 53:53 -p 53:53/udp -e ENABLE_CONTROL_CHANNEL=true deepzz/bind9`

Example usage, binding to a specific IP on the docker host:
`docker run -d -p <ip-address>:53:53 -p <ip-address>:53:53/udp -e ENABLE_CONTROL_CHANNEL=true deepzz/bind9`

*Note:* By default, this image is configured to recursively answer queries from any IP.  Copy and edit one of the files in `/etc/bind` to customize the server for your needs.

Options:
* `ENABLE_CONTROL_CHANNEL` (default: false) - Set to `true` to enable the control channel, allowing the use of `rndc` to control bind
    * Note: If `rndc.key` or `rndc.conf` is available via volume, it will still be used by bind.
