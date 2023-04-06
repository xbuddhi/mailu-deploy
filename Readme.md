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
docker rm -f mailu-resolver-1 mailu-webdav-1 mailu-antivirus-1 mailu-front-1 mailu-redis-1 mailu-oletools-1 mailu-admin-1 mailu-imap-1 mailu-webmail-1 mailu-antispam-1 mailu-smtp-1 mailu-fetchmail-1  && rm -r /mailu && cd &&docker ps -a
```

mailu start
```console
mkdir /mailu
cd /mailu
wget https://setup.mailu.io/2.0/file/ac6c6fa1-b1bd-4b17-a61c-7db3301e9566/docker-compose.yml
wget https://setup.mailu.io/2.0/file/ac6c6fa1-b1bd-4b17-a61c-7db3301e9566/mailu.env
docker compose -p mailu up -d
docker compose -p mailu exec admin flask mailu admin admin papol.lk password
```