FROM bitnami/jasperreports
LABEL maintainer "Bitnami <containers@bitnami.com>"
USER root


ENV ALLOW_EMPTY_PASSWORD="yes" \
    NAMI_PREFIX="/.nami" 


RUN useradd -ms /bin/bash -u 1001 tomcat && \
    chown -R 1001  /opt/bitnami/tomcat  /opt/bitnami/jasperreports
USER 1001

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "nami", "start", "--foreground", "tomcat" ]






