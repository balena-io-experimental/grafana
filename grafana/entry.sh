#!/bin/bash

if [ ! -d "/data/grafana/plugins/grafana-influxdb-flux-datasource" ]
then
    grafana-cli --pluginsDir "/data/grafana/plugins" plugins install grafana-influxdb-flux-datasource
    sleep 10
fi

if [ ! -d "/data/grafana/plugins/grafana-worldmap-panel" ]
then
    grafana-cli --pluginsDir "/data/grafana/plugins" plugins install grafana-worldmap-panel
    sleep 10
fi

exec grafana-server -homepath /usr/share/grafana -config /usr/src/app/grafana.ini
