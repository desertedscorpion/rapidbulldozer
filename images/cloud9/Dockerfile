FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
VOLUME /var/workspace
ENV GPG_SECRET_KEY="secret key" GPG_OWNER_TRUST="owner trust" ID_RSA="id_rsa" PASS_HOST="pass host" PASS_URL="pass url"
EXPOSE 8080
CMD ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/init.sh"]