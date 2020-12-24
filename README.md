# basic_spl_network_monitoring

This is mostly a collection of some code hoping to measure things using simple shell scripts to begin measuring network performance.

Seeking to measure the following over various protocols

1. Latency
2. Throughput 
3. Packet Loss

The inputs will be either

1. URL
2. Hostname
3. IP Address

The outputs will be a KV pair that Splunk can ingest nicel without any spectacular configuration

Ideally leveraging binaries included in most linux distrubtions and will be called (for now) using bash.
