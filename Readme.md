execute
```console
wget -O - https://raw.githubusercontent.com/xbuddhi/mailu-deploy/master/mailu.sh | bash
```

inspect containers
```console
docker compose logs -f smtp
```

remove containers and clear
```console
docker rm -f mailu-resolver-1 mailu-webdav-1 mailu-antivirus-1 mailu-front-1 mailu-redis-1 mailu-oletools-1 mailu-admin-1 mailu-imap-1 mailu-webmail-1 mailu-antispam-1 mailu-smtp-1 mailu-fetchmail-1  && rm -r /mailu && cd && docker ps -a
```

test port 80
```console
wget -O - https://raw.githubusercontent.com/xbuddhi/mailu-deploy/master/simple2.sh | bash
```

mailu start
```console
mkdir /mailu
cd /mailu
wget https://setup.mailu.io/2.0/file/670aea77-9f20-4911-b70d-a7b06fcf3256/docker-compose.yml
wget https://setup.mailu.io/2.0/file/670aea77-9f20-4911-b70d-a7b06fcf3256/mailu.env
docker compose -p mailu up -d
docker compose -p mailu exec admin flask mailu admin admin papol.lk password
```