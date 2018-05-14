FROM vimagick/samba

RUN apk add --no-cache shadow

CMD usermod -u 1001 --home /var/empty nobody && nmbd -D && smbd -FS
