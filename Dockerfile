FROM grafana/grafana:5.1.0

RUN curl -L -o /tmp/sensu-1-datasource.tar.gz  https://github.com/briangann/grafana-sensu-datasource/archive/master.tar.gz

RUN tar -xvf /tmp/sensu-1-datasource.tar.gz -C /var/lib/grafana/plugins/
