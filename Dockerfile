FROM grafana/grafana:5.4.1

USER root

RUN curl -L -o /tmp/sensu-1-datasource.tar.gz https://github.com/briangann/grafana-sensu-datasource/archive/master.tar.gz
RUN tar -xvf /tmp/sensu-1-datasource.tar.gz -C /var/lib/grafana/plugins/

RUN apt-get update
RUN apt-get install unzip

RUN curl -L -o /tmp/influxdb-flux-datasource.zip https://github.com/grafana/influxdb-flux-datasource/releases/download/5.2.6/influxdb-flux-datasource-5.2.6.zip
RUN mkdir /var/lib/grafana/plugins/influxdb-flux-datasource
RUN unzip /tmp/influxdb-flux-datasource.zip -d /var/lib/grafana/plugins/influxdb-flux-datasource
