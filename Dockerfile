#
# Dockerfile for calibre-server
#

FROM mgering/calibre-server 
LABEL maintainer="Mike Gering"
LABEL description="Run a calibre-server with --manage-users."

ENV CALIBRE_LIBRARY /books

VOLUME        ["/root/.config/calibre"]

ENTRYPOINT ["dumb-init", "/entrypoint.sh"]
CMD ["manage-users"]

