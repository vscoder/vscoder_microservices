## HomeWork 17: monitoring-2. Задания со звёздами

### Задания со \*


#### Makefile

Если в прошлом ДЗ вы реализовали Makefile, добавьте в него билд и публикацию добавленных в этом ДЗ сервисов;

Сделано в процессе


#### Сбор метрик с docker

В Docker в экспериментальном режиме реализована отдача метрик в формате Prometheus. Добавьте сбор этих метрик в Prometheus. Сравните количество метрик с Cadvisor. Выберите готовый дашборд или создайте свой для этого источника данных. Выгрузите его в monitoring/grafana/dashboards;

https://docs.docker.com/config/thirdparty/prometheus/

##### Реализация

**На докер-машине** создаём [/etc/docker/daemon.json](/etc/docker/daemon.json)
```json
{
  "metrics-addr" : "127.0.0.1:9323",
  "experimental" : true
}
```

Рестартуем докер `sudo systemctl restart docker`

Проверяем `curl http://127.0.0.1:9323/metrics`

<details><summary>результат</summary>
<p>

```log
# HELP builder_builds_failed_total Number of failed image builds
# TYPE builder_builds_failed_total counter
builder_builds_failed_total{reason="build_canceled"} 0
builder_builds_failed_total{reason="build_target_not_reachable_error"} 0
builder_builds_failed_total{reason="command_not_supported_error"} 0
builder_builds_failed_total{reason="dockerfile_empty_error"} 0
builder_builds_failed_total{reason="dockerfile_syntax_error"} 0
builder_builds_failed_total{reason="error_processing_commands_error"} 0
builder_builds_failed_total{reason="missing_onbuild_arguments_error"} 0
builder_builds_failed_total{reason="unknown_instruction_error"} 0
# HELP builder_builds_triggered_total Number of triggered image builds
# TYPE builder_builds_triggered_total counter
builder_builds_triggered_total 0
# HELP engine_daemon_container_actions_seconds The number of seconds it takes to process each container action
# TYPE engine_daemon_container_actions_seconds histogram
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.005"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.01"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.025"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.05"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.1"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.25"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="0.5"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="1"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="2.5"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="5"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="10"} 1
engine_daemon_container_actions_seconds_bucket{action="changes",le="+Inf"} 1
engine_daemon_container_actions_seconds_sum{action="changes"} 0
engine_daemon_container_actions_seconds_count{action="changes"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.005"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.01"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.025"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.05"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.1"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.25"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="0.5"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="1"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="2.5"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="5"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="10"} 1
engine_daemon_container_actions_seconds_bucket{action="commit",le="+Inf"} 1
engine_daemon_container_actions_seconds_sum{action="commit"} 0
engine_daemon_container_actions_seconds_count{action="commit"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.005"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.01"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.025"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.05"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.1"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.25"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="0.5"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="1"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="2.5"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="5"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="10"} 1
engine_daemon_container_actions_seconds_bucket{action="create",le="+Inf"} 1
engine_daemon_container_actions_seconds_sum{action="create"} 0
engine_daemon_container_actions_seconds_count{action="create"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.005"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.01"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.025"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.05"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.1"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.25"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="0.5"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="1"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="2.5"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="5"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="10"} 1
engine_daemon_container_actions_seconds_bucket{action="delete",le="+Inf"} 1
engine_daemon_container_actions_seconds_sum{action="delete"} 0
engine_daemon_container_actions_seconds_count{action="delete"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.005"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.01"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.025"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.05"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.1"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.25"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="0.5"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="1"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="2.5"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="5"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="10"} 1
engine_daemon_container_actions_seconds_bucket{action="start",le="+Inf"} 1
engine_daemon_container_actions_seconds_sum{action="start"} 0
engine_daemon_container_actions_seconds_count{action="start"} 1
# HELP engine_daemon_container_states_containers The count of containers in various states
# TYPE engine_daemon_container_states_containers gauge
engine_daemon_container_states_containers{state="paused"} 0
engine_daemon_container_states_containers{state="running"} 0
engine_daemon_container_states_containers{state="stopped"} 0
# HELP engine_daemon_engine_cpus_cpus The number of cpus that the host system of the engine has
# TYPE engine_daemon_engine_cpus_cpus gauge
engine_daemon_engine_cpus_cpus 1
# HELP engine_daemon_engine_info The information related to the engine and the OS it is running on
# TYPE engine_daemon_engine_info gauge
engine_daemon_engine_info{architecture="x86_64",commit="633a0ea838",daemon_id="7OQE:2AWM:SOWG:GKAK:KZJZ:UBVQ:3I54:GSUO:OMAB:GCEC:F6FY:QIZJ",graphdriver="overlay2",kernel="4.15.0-1050-gcp",os="Ubuntu 16.04.6 LTS",os_type="linux",version="19.03.5"} 1
# HELP engine_daemon_engine_memory_bytes The number of bytes of memory that the host system of the engine has
# TYPE engine_daemon_engine_memory_bytes gauge
engine_daemon_engine_memory_bytes 3.872657408e+09
# HELP engine_daemon_events_subscribers_total The number of current subscribers to events
# TYPE engine_daemon_events_subscribers_total gauge
engine_daemon_events_subscribers_total 0
# HELP engine_daemon_events_total The number of events logged
# TYPE engine_daemon_events_total counter
engine_daemon_events_total 0
# HELP engine_daemon_health_checks_failed_total The total number of failed health checks
# TYPE engine_daemon_health_checks_failed_total counter
engine_daemon_health_checks_failed_total 0
# HELP engine_daemon_health_checks_total The total number of health checks
# TYPE engine_daemon_health_checks_total counter
engine_daemon_health_checks_total 0
# HELP etcd_debugging_snap_save_marshalling_duration_seconds The marshalling cost distributions of save called by snapshot.
# TYPE etcd_debugging_snap_save_marshalling_duration_seconds histogram
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.001"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.002"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.004"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.008"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.016"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.032"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.064"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.128"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.256"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="0.512"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="1.024"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="2.048"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="4.096"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="8.192"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_bucket{le="+Inf"} 0
etcd_debugging_snap_save_marshalling_duration_seconds_sum 0
etcd_debugging_snap_save_marshalling_duration_seconds_count 0
# HELP etcd_debugging_snap_save_total_duration_seconds The total latency distributions of save called by snapshot.
# TYPE etcd_debugging_snap_save_total_duration_seconds histogram
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.001"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.002"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.004"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.008"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.016"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.032"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.064"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.128"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.256"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="0.512"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="1.024"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="2.048"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="4.096"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="8.192"} 0
etcd_debugging_snap_save_total_duration_seconds_bucket{le="+Inf"} 0
etcd_debugging_snap_save_total_duration_seconds_sum 0
etcd_debugging_snap_save_total_duration_seconds_count 0
# HELP etcd_disk_wal_fsync_duration_seconds The latency distributions of fsync called by wal.
# TYPE etcd_disk_wal_fsync_duration_seconds histogram
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.001"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.002"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.004"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.008"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.016"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.032"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.064"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.128"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.256"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="0.512"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="1.024"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="2.048"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="4.096"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="8.192"} 0
etcd_disk_wal_fsync_duration_seconds_bucket{le="+Inf"} 0
etcd_disk_wal_fsync_duration_seconds_sum 0
etcd_disk_wal_fsync_duration_seconds_count 0
# HELP etcd_snap_db_fsync_duration_seconds The latency distributions of fsyncing .snap.db file
# TYPE etcd_snap_db_fsync_duration_seconds histogram
etcd_snap_db_fsync_duration_seconds_bucket{le="0.001"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.002"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.004"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.008"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.016"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.032"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.064"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.128"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.256"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="0.512"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="1.024"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="2.048"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="4.096"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="8.192"} 0
etcd_snap_db_fsync_duration_seconds_bucket{le="+Inf"} 0
etcd_snap_db_fsync_duration_seconds_sum 0
etcd_snap_db_fsync_duration_seconds_count 0
# HELP etcd_snap_db_save_total_duration_seconds The total latency distributions of v3 snapshot save
# TYPE etcd_snap_db_save_total_duration_seconds histogram
etcd_snap_db_save_total_duration_seconds_bucket{le="0.1"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="0.2"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="0.4"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="0.8"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="1.6"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="3.2"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="6.4"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="12.8"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="25.6"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="51.2"} 0
etcd_snap_db_save_total_duration_seconds_bucket{le="+Inf"} 0
etcd_snap_db_save_total_duration_seconds_sum 0
etcd_snap_db_save_total_duration_seconds_count 0
# HELP go_gc_duration_seconds A summary of the GC invocation durations.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 1.0016e-05
go_gc_duration_seconds{quantile="0.25"} 1.1974e-05
go_gc_duration_seconds{quantile="0.5"} 1.1985e-05
go_gc_duration_seconds{quantile="0.75"} 1.2419e-05
go_gc_duration_seconds{quantile="1"} 1.2419e-05
go_gc_duration_seconds_sum 4.6394e-05
go_gc_duration_seconds_count 4
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 61
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 8.525504e+06
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 1.4712576e+07
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.448719e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 97769
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 2.398208e+06
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 8.525504e+06
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 5.6147968e+07
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 1.0338304e+07
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 123229
# HELP go_memstats_heap_released_bytes_total Total number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes_total counter
go_memstats_heap_released_bytes_total 0
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 6.6486272e+07
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.5768610567062879e+09
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 220998
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 1736
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 16384
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 157248
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 180224
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 1.611552e+07
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 347625
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 622592
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 622592
# HELP go_memstats_sys_bytes Number of bytes obtained by system. Sum of all system allocations.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 7.1500024e+07
# HELP http_request_duration_microseconds The HTTP request latencies in microseconds.
# TYPE http_request_duration_microseconds summary
http_request_duration_microseconds{handler="prometheus",quantile="0.5"} 1319.321
http_request_duration_microseconds{handler="prometheus",quantile="0.9"} 1319.321
http_request_duration_microseconds{handler="prometheus",quantile="0.99"} 1319.321
http_request_duration_microseconds_sum{handler="prometheus"} 1319.321
http_request_duration_microseconds_count{handler="prometheus"} 1
# HELP http_request_size_bytes The HTTP request sizes in bytes.
# TYPE http_request_size_bytes summary
http_request_size_bytes{handler="prometheus",quantile="0.5"} 63
http_request_size_bytes{handler="prometheus",quantile="0.9"} 63
http_request_size_bytes{handler="prometheus",quantile="0.99"} 63
http_request_size_bytes_sum{handler="prometheus"} 63
http_request_size_bytes_count{handler="prometheus"} 1
# HELP http_requests_total Total number of HTTP requests made.
# TYPE http_requests_total counter
http_requests_total{code="200",handler="prometheus",method="get"} 1
# HELP http_response_size_bytes The HTTP response sizes in bytes.
# TYPE http_response_size_bytes summary
http_response_size_bytes{handler="prometheus",quantile="0.5"} 30026
http_response_size_bytes{handler="prometheus",quantile="0.9"} 30026
http_response_size_bytes{handler="prometheus",quantile="0.99"} 30026
http_response_size_bytes_sum{handler="prometheus"} 30026
http_response_size_bytes_count{handler="prometheus"} 1
# HELP logger_log_entries_size_greater_than_buffer_total Number of log entries which are larger than the log buffer
# TYPE logger_log_entries_size_greater_than_buffer_total counter
logger_log_entries_size_greater_than_buffer_total 0
# HELP logger_log_read_operations_failed_total Number of log reads from container stdio that failed
# TYPE logger_log_read_operations_failed_total counter
logger_log_read_operations_failed_total 0
# HELP logger_log_write_operations_failed_total Number of log write operations that failed
# TYPE logger_log_write_operations_failed_total counter
logger_log_write_operations_failed_total 0
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 0.11
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1.048576e+06
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 24
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 8.6437888e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.57686105641e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 4.29797376e+08
# HELP swarm_dispatcher_scheduling_delay_seconds Scheduling delay is the time a task takes to go from NEW to RUNNING state.
# TYPE swarm_dispatcher_scheduling_delay_seconds histogram
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.005"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.01"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.025"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.05"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.1"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.25"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="0.5"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="1"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="2.5"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="5"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="10"} 0
swarm_dispatcher_scheduling_delay_seconds_bucket{le="+Inf"} 0
swarm_dispatcher_scheduling_delay_seconds_sum 0
swarm_dispatcher_scheduling_delay_seconds_count 0
# HELP swarm_manager_configs_total The number of configs in the cluster object store
# TYPE swarm_manager_configs_total gauge
swarm_manager_configs_total 0
# HELP swarm_manager_leader Indicates if this manager node is a leader
# TYPE swarm_manager_leader gauge
swarm_manager_leader 0
# HELP swarm_manager_networks_total The number of networks in the cluster object store
# TYPE swarm_manager_networks_total gauge
swarm_manager_networks_total 0
# HELP swarm_manager_nodes The number of nodes
# TYPE swarm_manager_nodes gauge
swarm_manager_nodes{state="disconnected"} 0
swarm_manager_nodes{state="down"} 0
swarm_manager_nodes{state="ready"} 0
swarm_manager_nodes{state="unknown"} 0
# HELP swarm_manager_secrets_total The number of secrets in the cluster object store
# TYPE swarm_manager_secrets_total gauge
swarm_manager_secrets_total 0
# HELP swarm_manager_services_total The number of services in the cluster object store
# TYPE swarm_manager_services_total gauge
swarm_manager_services_total 0
# HELP swarm_manager_tasks_total The number of tasks in the cluster object store
# TYPE swarm_manager_tasks_total gauge
swarm_manager_tasks_total{state="accepted"} 0
swarm_manager_tasks_total{state="assigned"} 0
swarm_manager_tasks_total{state="complete"} 0
swarm_manager_tasks_total{state="failed"} 0
swarm_manager_tasks_total{state="new"} 0
swarm_manager_tasks_total{state="orphaned"} 0
swarm_manager_tasks_total{state="pending"} 0
swarm_manager_tasks_total{state="preparing"} 0
swarm_manager_tasks_total{state="ready"} 0
swarm_manager_tasks_total{state="rejected"} 0
swarm_manager_tasks_total{state="remove"} 0
swarm_manager_tasks_total{state="running"} 0
swarm_manager_tasks_total{state="shutdown"} 0
swarm_manager_tasks_total{state="starting"} 0
# HELP swarm_node_manager Whether this node is a manager or not
# TYPE swarm_node_manager gauge
swarm_node_manager 0
# HELP swarm_raft_snapshot_latency_seconds Raft snapshot create latency.
# TYPE swarm_raft_snapshot_latency_seconds histogram
swarm_raft_snapshot_latency_seconds_bucket{le="0.005"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.01"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.025"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.05"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.1"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.25"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="0.5"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="1"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="2.5"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="5"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="10"} 0
swarm_raft_snapshot_latency_seconds_bucket{le="+Inf"} 0
swarm_raft_snapshot_latency_seconds_sum 0
swarm_raft_snapshot_latency_seconds_count 0
# HELP swarm_raft_transaction_latency_seconds Raft transaction latency.
# TYPE swarm_raft_transaction_latency_seconds histogram
swarm_raft_transaction_latency_seconds_bucket{le="0.005"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.01"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.025"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.05"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.1"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.25"} 0
swarm_raft_transaction_latency_seconds_bucket{le="0.5"} 0
swarm_raft_transaction_latency_seconds_bucket{le="1"} 0
swarm_raft_transaction_latency_seconds_bucket{le="2.5"} 0
swarm_raft_transaction_latency_seconds_bucket{le="5"} 0
swarm_raft_transaction_latency_seconds_bucket{le="10"} 0
swarm_raft_transaction_latency_seconds_bucket{le="+Inf"} 0
swarm_raft_transaction_latency_seconds_sum 0
swarm_raft_transaction_latency_seconds_count 0
# HELP swarm_store_batch_latency_seconds Raft store batch latency.
# TYPE swarm_store_batch_latency_seconds histogram
swarm_store_batch_latency_seconds_bucket{le="0.005"} 0
swarm_store_batch_latency_seconds_bucket{le="0.01"} 0
swarm_store_batch_latency_seconds_bucket{le="0.025"} 0
swarm_store_batch_latency_seconds_bucket{le="0.05"} 0
swarm_store_batch_latency_seconds_bucket{le="0.1"} 0
swarm_store_batch_latency_seconds_bucket{le="0.25"} 0
swarm_store_batch_latency_seconds_bucket{le="0.5"} 0
swarm_store_batch_latency_seconds_bucket{le="1"} 0
swarm_store_batch_latency_seconds_bucket{le="2.5"} 0
swarm_store_batch_latency_seconds_bucket{le="5"} 0
swarm_store_batch_latency_seconds_bucket{le="10"} 0
swarm_store_batch_latency_seconds_bucket{le="+Inf"} 0
swarm_store_batch_latency_seconds_sum 0
swarm_store_batch_latency_seconds_count 0
# HELP swarm_store_lookup_latency_seconds Raft store read latency.
# TYPE swarm_store_lookup_latency_seconds histogram
swarm_store_lookup_latency_seconds_bucket{le="0.005"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.01"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.025"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.05"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.1"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.25"} 0
swarm_store_lookup_latency_seconds_bucket{le="0.5"} 0
swarm_store_lookup_latency_seconds_bucket{le="1"} 0
swarm_store_lookup_latency_seconds_bucket{le="2.5"} 0
swarm_store_lookup_latency_seconds_bucket{le="5"} 0
swarm_store_lookup_latency_seconds_bucket{le="10"} 0
swarm_store_lookup_latency_seconds_bucket{le="+Inf"} 0
swarm_store_lookup_latency_seconds_sum 0
swarm_store_lookup_latency_seconds_count 0
# HELP swarm_store_memory_store_lock_duration_seconds Duration for which the raft memory store lock was held.
# TYPE swarm_store_memory_store_lock_duration_seconds histogram
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.005"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.01"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.025"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.05"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.1"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.25"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="0.5"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="1"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="2.5"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="5"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="10"} 0
swarm_store_memory_store_lock_duration_seconds_bucket{le="+Inf"} 0
swarm_store_memory_store_lock_duration_seconds_sum 0
swarm_store_memory_store_lock_duration_seconds_count 0
# HELP swarm_store_read_tx_latency_seconds Raft store read tx latency.
# TYPE swarm_store_read_tx_latency_seconds histogram
swarm_store_read_tx_latency_seconds_bucket{le="0.005"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.01"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.025"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.05"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.1"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.25"} 0
swarm_store_read_tx_latency_seconds_bucket{le="0.5"} 0
swarm_store_read_tx_latency_seconds_bucket{le="1"} 0
swarm_store_read_tx_latency_seconds_bucket{le="2.5"} 0
swarm_store_read_tx_latency_seconds_bucket{le="5"} 0
swarm_store_read_tx_latency_seconds_bucket{le="10"} 0
swarm_store_read_tx_latency_seconds_bucket{le="+Inf"} 0
swarm_store_read_tx_latency_seconds_sum 0
swarm_store_read_tx_latency_seconds_count 0
# HELP swarm_store_write_tx_latency_seconds Raft store write tx latency.
# TYPE swarm_store_write_tx_latency_seconds histogram
swarm_store_write_tx_latency_seconds_bucket{le="0.005"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.01"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.025"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.05"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.1"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.25"} 0
swarm_store_write_tx_latency_seconds_bucket{le="0.5"} 0
swarm_store_write_tx_latency_seconds_bucket{le="1"} 0
swarm_store_write_tx_latency_seconds_bucket{le="2.5"} 0
swarm_store_write_tx_latency_seconds_bucket{le="5"} 0
swarm_store_write_tx_latency_seconds_bucket{le="10"} 0
swarm_store_write_tx_latency_seconds_bucket{le="+Inf"} 0
swarm_store_write_tx_latency_seconds_sum 0
swarm_store_write_tx_latency_seconds_count 0
```

</p>
</details>

В [monitoring/prometheus/prometheus.yml](monitoring/prometheus/prometheus.yml) добавляем
```yaml
- job_name: "docker"
    # metrics_path defaults to '/metrics'
    # scheme defaults to 'http'.
    static_configs:
      - targets: ["localhost:9323"]
```

Пересоберём prometheus с новым конфигом
```shell
make build_prometheus
```

Запускаемся `make run`

Проверяемся
```shell
make docker_machine_ip
```

Открываем браузером http://35.195.207.38:9090/targets

Не открывается, потому что сеть хоста недоступна из контейнера.

Анализ: 

Варианты: https://fooobar.com/questions/79775/how-to-access-host-port-from-docker-container

Предпочтительным кажется использование сетевого имни хоста `host.docker.internal`, но: не работает

Интересная дискуссия на эту тему: https://github.com/docker/for-linux/issues/264 предлагают кучу костылей.

Для теста, запущу прометей в сетевом неймспейса хоста с `--network=host`

[docker/docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml)
```yaml
...
  prometheus:
    image: ${USERNAME}/prometheus:${PROMETHEUS_VERSION}
    ports:
      - "9090:9090"
    volumes:
      - prometheus_data:/prometheus
    # networks:
    #   - reddit_front
    #   - reddit_back
    command:
      - "--config.file=/etc/prometheus/prometheus.yml"
      - "--storage.tsdb.path=/prometheus"
      - "--storage.tsdb.retention=1d"
    network_mode: "host"
```
Пришлось отключить `networks` так как несовместимы с `network_mode: "host"`

Смотрим в http://35.195.207.38:9090/targets - target `docker` доступен. Остальные, естественно, нет (кроме `prometheus`).

Судя по описанию и составу метрик, они в основном описывают работу swarm-кластера. Docker swarm кластер я уже как-то поднимал, повторно делать то же самое не очень интересно, оставлю это как есть))


##### grafana

Чтобы графана увидела прометей, ьак же поместим её в сетевой неймспейс хоста.

[docker/docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml)
```yaml
...
  grafana:
    image: grafana/grafana:${GRAFANA_VERSION}
    volumes:
      - grafana_data:/var/lib/grafana
    environment:
      - GF_SECURITY_ADMIN_USER=admin
      - GF_SECURITY_ADMIN_PASSWORD=secret
    depends_on:
      - prometheus
    ports:
      - 3000:3000
    network_mode: "host"
    # networks:
    #   - reddit_front
```

```shell
make run
```

Испортирован дашборд https://grafana.com/grafana/dashboards/1229

Описание дашбода https://medium.com/@basi/docker-swarm-metrics-in-prometheus-e02a6a5745a?#.6nzvnljvm

Дашборд сохранён в [monitoring/grafana/dashboards/docker-metrics.json](monitoring/grafana/dashboards/docker-metrics.json)



#### Telegraf

Для сбора метрик с Docker демона также можно использовать Telegraf от InfluxDB. Добавьте сбор этих метрик в Prometheus. Сравните количество метрик с Cadvisor. Выберите готовый дашборд или создайте свой для этого источника данных. Выгрузите его в monitoring/grafana/dashboards;

TODO: сделать


#### Alertmanager email

Придумайте и реализуйте другие алерты, например на 95 процентиль времени ответа UI, который рассмотрен выше; Настройте интеграцию Alertmanager с e-mail помимо слака;

TODO: сделать


### Задания с \*\*

#### Автоматическое развёртывание Grafana

В Grafana 5.0 была добавлена возможность описать в конфигурационных файлах источники данных и дашборды. Реализуйте автоматическое добавление источника данных и созданных в данном ДЗ дашбордов в графану;

https://grafana.com/docs/grafana/latest/administration/provisioning/

Есть ансибл-роль для развртывания grafana с возможностью провиженинга https://github.com/cloudalchemy/ansible-grafana

Мы же не будем уходить от текущей схемы развёртывания, и соберём свой docker-образ с grafana и всем необходимым

##### Dockerfile

Шаблон взят из https://github.com/grafana/grafana-docker/blob/master/custom/Dockerfile и дополнен

[monitoring/grafana/Dockerfile](monitoring/grafana/Dockerfile)
```dockerfile
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
```

Создан Makefile targets для автоматизхации частых действий с docker-compose
```makefile
###
# docker-compose
###
docker_compose_shell:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml exec ${SERVICE} sh

docker_compose_logs:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml logs -f ${SERVICE}

docker_compose_down:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml down ${SERVICE}
```

Создан файл [monitoring/grafana/docker_build.sh](monitoring/grafana/docker_build.sh) для сборки кастомной grafana
```shell
#!/bin/bash
set -eu

docker build -t $USER_NAME/grafana:local .
```

В `docker/.env` версия grafana указана `local`

В [Makefile](Makefile) добавлены цели
```makefile
###
# grafana
###
grafana_build:
	. ./env && \
	cd ./monitoring/grafana && bash docker_build.sh

grafana_push:
	. ./env && \
	docker push $${USER_NAME}/grafana
```

В директории `monitoring/grafana` создан файл [datasources.yaml](monitoring/grafana/datasources.yaml)
```yaml
---
# config file version
apiVersion: 1

deleteDatasources:
  - name: Prometheus
  - name: Prometheus server
# list of datasources to insert/update depending
# what's available in the database
datasources:
  # <string, required> name of the datasource. Required
  - name: Prometheus Server
    # <string, required> datasource type. Required
    type: prometheus
    # <string, required> access mode. proxy or direct (Server or Browser in the UI). Required
    access: proxy
    # <string> url
    url: http://prometheus:9090
    # <bool> mark as default datasource. Max one per org
    isDefault: true
    # <bool> allow users to edit datasources from the UI.
    editable: false
```

Выполнена сборка графаны и запуск всего
```shell
make grafana_build run
```

Проверим логи графаны
```shell
make docker_compose_logs SERVICE=grafana | grep provision
```
```log
...
grafana_1          | t=2019-12-21T10:00:37+0000 lvl=info msg="Initializing provisioningServiceImpl" logger=server
grafana_1          | t=2019-12-21T10:00:37+0000 lvl=info msg="inserting datasource from configuration " logger=provisioning.datasources name=Prometheus
```

Создан файл [monitoring/grafana/dashboards.yaml](monitoring/grafana/dashboards.yaml) с описанием источника для дашбордов
```yaml
---
apiVersion: 1

providers:
  # <string> an unique provider name
  - name: "provision"
    # <int> org id. will default to orgId 1 if not specified
    orgId: 1
    # <string, required> name of the dashboard folder. Required
    folder: ""
    # <string> folder UID. will be automatically generated if not specified
    folderUid: ""
    # <string, required> provider type. Required
    type: file
    # <bool> disable dashboard deletion
    disableDeletion: false
    # <bool> enable dashboard editing
    editable: true
    # <int> how often Grafana will scan for changed dashboards
    updateIntervalSeconds: 10
    # <bool> allow updating provisioned dashboards from the UI
    allowUiUpdates: false
    options:
      # <string, required> path to dashboard files on disk. Required
      path: /tmp/dashboards
```

Выполнена сборка и запуск
```shell
make grafana_build run
```
В веб-интерфейсе, помимо источника данных, появились дашборды.


#### Stackdriver

Реализуйте сбор метрик со Stackdriver, в PR опишите, какие метрики удалось собрать;

TODO: сделать


#### Свои метрики

Придумайте свои метрики приложения/бизнес метрики и реализуйте их в коде приложения. Опишите в PR что было добавлено;

TODO: сделать


### Задания со \*\*\*

#### Tickster

Реализуйте схему с проксированием запросов от Grafana к Prometheus через Trickster, кеширующий прокси от Comcast;

https://www.craftypenguins.net/optimizing-grafana-and-prometheus-rendering-performance-using-trickster/

TODO: сделать


#### Автоматическое исправление проблем

Используя связку Autoheal + AWX, реализуйте автоматическое исправление проблем (например рестарт одного из микросервисов при падении);

> - Autoheal - проект команды OpenShift для автоматического иcправления проблем по результатам алертов;
> - AWX - open source версия Ansible Tower, установить его можно либо вручную, либо используя одну из готовых ролей, [например](https://github.com/geerlingguy/ansible-role-awx);

Дополнительные папки создавайте в директории monitoring.

TODO: сделать
