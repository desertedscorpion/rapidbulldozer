FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
ENV GPG_SECRET_KEY="secret key" GPG_OWNER_TRUST="owner trust"
EXPOSE 8080
CMD ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/init.sh"]