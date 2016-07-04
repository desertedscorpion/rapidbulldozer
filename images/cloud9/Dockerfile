FROM fedora:23
COPY scripts /opt/rapidbullozer/scripts/
RUN ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/install.sh", "hello"]
EXPOSE 8080
CMD ["/usr/bin/bash", "/opt/rapidbulldozer/scripts/sbin/init.sh"]