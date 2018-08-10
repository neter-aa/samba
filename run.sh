#!/bin/bash

docker run -dt \
  -v $PWD/conf/smb.conf:/config/smb.conf \
  -v /data/samba/public:/shared \
  -p 445:445 \
  -p 137-139:137-139 \
  --name samba \
  --restart=always \
  registry.guoli-dev.com/samba
