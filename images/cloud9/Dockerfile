FROM fedora:23
COPY scripts /opt/rapidbulldozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh"]
EXPOSE 8080
CMD ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/init.sh"]