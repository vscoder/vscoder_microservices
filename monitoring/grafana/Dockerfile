ARG GRAFANA_VERSION="latest"

FROM grafana/grafana:${GRAFANA_VERSION}

USER grafana

ARG GF_INSTALL_PLUGINS=""

RUN if [ ! -z "${GF_INSTALL_PLUGINS}" ]; then \
    OLDIFS=$IFS; \
    IFS=','; \
    for plugin in ${GF_INSTALL_PLUGINS}; do \
    IFS=$OLDIFS; \
    grafana-cli --pluginsDir "$GF_PATHS_PLUGINS" plugins install ${plugin}; \
    done; \
    fi

COPY ./datasources.yaml ${GF_PATHS_PROVISIONING}/datasources/
COPY ./dashboards.yaml ${GF_PATHS_PROVISIONING}/dashboards/
RUN mkdir -p /tmp/dashboards
COPY ./dashboards/* /tmp/dashboards/
