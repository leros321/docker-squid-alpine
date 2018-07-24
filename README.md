Squid
=====

Slim image (18MB) of Squid running under Alpine Linux 3.3.
Taken from https://github.com/sjperkins/docker-squid-alpine (Alpine 3.2)

How to use
=========

```
docker run -p 3128:3128 leros321/squid_proxy
```

With bespoke configuration:

```
docker run  -v <configPath>/squid.conf:/etc/squid/squid.conf:ro \
            -v <configPath/cache:/var/cache/squid:rw \
            -v /var/log/squid:/var/log/squid:rw \
            -v /etc/localtime:/etc/localtime:ro \
            -p 3128:3128 \
            leros321/squid_proxy
```
