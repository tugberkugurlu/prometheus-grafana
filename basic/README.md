[https://medium.com/aeturnuminc/configure-prometheus-and-grafana-in-dockers-ff2a2b51aa1d](https://medium.com/aeturnuminc/configure-prometheus-and-grafana-in-dockers-ff2a2b51aa1d)

[https://github.com/alerta/prometheus-config/blob/master/docker-compose.yml](https://github.com/alerta/prometheus-config/blob/master/docker-compose.yml)

[https://prometheus.io/docs/guides/go-application/](https://prometheus.io/docs/guides/go-application/)

```
docker run -d --name prometheus -p 9090:9090 -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus --config.file=/etc/prometheus/prometheus.yml
```

```
docker run -d --name grafana -p 3000:3000 grafana/grafana
```

[https://stackoverflow.com/a/47174280/463785](https://stackoverflow.com/a/47174280/463785)

```
increase(myapp_processed_ops_total[20s])
```

## Grafana Dashboards

 - [Go Processes](https://grafana.com/grafana/dashboards/6671)

## Queries

 - [https://prometheus.io/docs/prometheus/latest/querying/basics/](https://prometheus.io/docs/prometheus/latest/querying/basics/)
 - [https://prometheus.io/docs/prometheus/latest/querying/functions/#rate](https://prometheus.io/docs/prometheus/latest/querying/functions/#rate)
 - [https://prometheus.io/docs/practices/histograms/#quantiles](https://prometheus.io/docs/practices/histograms/#quantiles)
```
rate(go_gc_duration_seconds{job="myapp"}[1m])
```

```
rate(myapp_processed_ops_total[1m])
```

## Other Resources

 - [https://devopsheaven.com/docker/docker-compose/volumes/2018/01/16/volumes-in-docker-compose.html](https://devopsheaven.com/docker/docker-compose/volumes/2018/01/16/volumes-in-docker-compose.html)