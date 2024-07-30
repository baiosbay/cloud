
https://doc.owncloud.com/ocis/next/deployment/container/container-setup.html#first-time-start



`docker run --rm -it     --mount type=bind,source=$PWD/ocis/ocis-config,target=/etc/ocis  owncloud/ocis:5.0-linux-amd64 init`


=========================================
 generated OCIS Config
=========================================
 configpath : /etc/ocis/ocis.yaml
 user       : admin
 password   : %WFS&iQgj6Q$244kWT9ra^ztIT+DOelb


`docker run     --name ocis_runtime     --rm     -it     -p 9200:9200     --mount type=bind,source=$PWD/ocis/ocis-config,target=/etc/ocis     --mount type=bind,source=$PWD/ocis/ocis-data,target=/var/lib/ocis     -e OCIS_INSECURE=true     -e PROXY_HTTP_ADDR=0.0.0.0:9200     -e OCIS_URL=https://localhost:9200     owncloud/ocis:5.0-linux-amd64`


Using .env

`docker run     --name ocis_runtime     --rm     -it     -p 9200:9200  --env-file=".env"   --mount type=bind,source=$PWD/ocis/ocis-config,target=/etc/ocis     --mount type=bind,source=$PWD/ocis/ocis-data,target=/var/lib/ocis    owncloud/ocis:5.0-linux-amd64`


Task list
    1. OwnCloud oCIS deployment
    2. Connect domain
    3. Connect S3 Bucket
    4. Custom logo + Theme
    5. Storage mobile app
    6. Email Client cross platform app
    7. Custom theme for email client
