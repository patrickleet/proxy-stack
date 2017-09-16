docker stack deploy -c proxy.yml proxy
docker stack deploy -c monitor.yml monitor
docker stack deploy -c exporters.yml exporters