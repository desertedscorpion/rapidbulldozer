FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
VOLUME /var/workspace
ENV GPG_SECRET_KEY="secret key" GPG_OWNER_TRUST="owner trust" ID_RSA="id_rsa" PASS_HOST="pass host" PASS_URL="pass url" CANONICAL_HOST="canonical host" ORIGIN_HOST="origin host" CANONICAL_URL="canonical url" ORIGIN_URL="origin url" DISPLAY="display"
EXPOSE 8080
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes git bash-completion git-extras gitflow &&\
    dnf update --assumeyes && \
    dnf clean all
CMD /opt/rapidbulldozer/scripts/sbin/init.sh