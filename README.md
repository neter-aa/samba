# samba

```
git clone git@github.com:neter-aa/samba.git
cd samba/samba-alpine-docker
#make tag registry.guoli-dev.com/samba
docker build -t registry.guoli-dev.com/samba .

cd ..
#centos7 need adduser & make dir public
groupadd -g 2000 samba
adduser -u 2000 -g 2000 -s /bin/false samba
mkdir -p /data/samba/public/
chmod 755 /data/samba/public/
chown -R samba.samba /data/samba/public/

bash run.sh
```

guest readonly
guoli writeable
