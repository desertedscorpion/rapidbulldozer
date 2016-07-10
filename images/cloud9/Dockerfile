FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
VOLUME /var/workspace
ENV GPG_SECRET_KEY="secret key" GPG_OWNER_TRUST="owner trust" ID_RSA="id_rsa" PASS_HOST="pass host" PASS_URL="pass url" CANONICAL_HOST="canonical host" ORIGIN_HOST="origin host" CANONICAL_URL="canonical url" ORIGIN_URL="origin url" DISPLAY="display" EMAIL="email" NAME="name"
EXPOSE 8080
ENV LDAP_EMAIL="" LDAP_PASSWORD="" LDAP_USERNAME=""
ENV GITHUB_ACCESS_TOKEN=""
COPY 900-bin-about.sh /opt/rapidbulldozer/init/bin
VOLUME /opt/rapidbulldozer/gpg.secret.key
VOLUME /opt/rapidbulldozer/gpg.owner.trust
VOLUME /opt/rapidbulldozer/ca.cert
EXPOSE 8443
CMD /opt/rapidbulldozer/scripts/sbin/init.sh