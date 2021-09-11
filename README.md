# DEPRICATED: no longer in use

This is a socks proxy which we use with the instagrapi app v2 so that all requests have the same origin IP, this makes instagram [trust](https://github.com/adw0rd/instagrapi/discussions/220) us more.

# How to build

```
docker build -t socks5 .
```

# How to run with auth


Better to run on non-standard port:
```
docker run -d --name socks --restart=always -p 11080:1080 -e "USER=myuser" -e "PASSWORD=mypassword" socks5
```


# How to test

Without auth:
```
curl -v -x socks5://SERVER_IP_ADDRESS:11080 http://www.google.com/
```

With auth:
```
curl -v -x socks5://myuser:mypassword@SERVER_IP_ADDRESS:11080 http://www.google.com/
```
