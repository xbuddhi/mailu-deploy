execute
```console
wget -O - https://raw.githubusercontent.com/xbuddhi/mailu-deploy/master/mailu.sh | bash
```

inspect containers
```console
docker-compose logs -f smtp
```

remove containers and clear
```console
docker rm -f mailu-resolver-1 mailu-webdav-1 mailu-antivirus-1 mailu-front-1 mailu-redis-1 mailu-oletools-1 mailu-admin-1 mailu-imap-1 mailu-webmail-1 mailu-antispam-1 mailu-smtp-1 mailu-fetchmail-1
```