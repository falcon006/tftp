FROM debian:buster
RUN apt update
RUN apt install -y tftpd-hpa xinetd 
COPY tftp.xinetd /etc/xinetd.d/tftp
COPY docker-entrypoint.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
RUN ln -s /usr/local/bin/docker-entrypoint.sh /
CMD ["tftp"]
ENTRYPOINT ["docker-entrypoint.sh"]
