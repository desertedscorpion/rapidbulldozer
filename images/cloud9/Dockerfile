FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
VOLUME /var/workspace
ENV GPG_SECRET_KEY="secret key" GPG_OWNER_TRUST="owner trust" ID_RSA="id_rsa" PASS_HOST="pass host" PASS_URL="pass url" CANONICAL_HOST="canonical host" ORIGIN_HOST="origin host" CANONICAL_URL="canonical url" ORIGIN_URL="origin url" DISPLAY="display" EMAIL="email" NAME="name"
EXPOSE 8080
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes git bash-completion git-extras gitflow && \
    dnf install --assumeyes man && \
    dnf update --assumeyes && \
    dnf clean all
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes findutils && \
    dnf update --assumeyes && \
    dnf clean all
COPY 100-sbin.sh /opt/rapidbulldozer/init/sbin
COPY 100-bin.sh /opt/rapidbulldozer/init/bin
COPY 200-sbin-gpg.sh /opt/rapidbulldozer/init/sbin
COPY 200-bin-gpg.sh /opt/rapidbulldozer/init/bin
COPY 300-bin-pass.sh /opt/rapidbulldozer/init/bin
VOLUME /opt/rapidbulldozer/gpg.secret.key
VOLUME /opt/rapidbulldozer/gpg.owner.trust
CMD /opt/rapidbulldozer/scripts/sbin/init.sh