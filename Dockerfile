FROM vimagick/samba

RUN apk add --no-cache shadow

CMD usermod -u 1001 --home /var/empty nobody && groupmod -g 1001 nobody && nmbd -D && smbd -FS
