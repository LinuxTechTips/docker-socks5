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
