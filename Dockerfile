FROM grafana/grafana-oss:9.0.2

COPY ./dashboards/ /var/lib/grafana/dashboards
COPY ./provisioning /etc/grafana/provisioning

RUN grafana-cli plugins install grafana-googlesheets-datasource