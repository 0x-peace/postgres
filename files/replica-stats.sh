#!/bin/bash

sudo -H -u postgres psql -c "SELECT client_addr AS client, usename AS user, application_name AS name, state, sync_state AS mode, \
                (pg_wal_lsn_diff(pg_current_wal_lsn(),sent_lsn) / 1024)::int as pending, \
                (pg_wal_lsn_diff(sent_lsn,write_lsn) / 1024)::int as write, \
                (pg_wal_lsn_diff(flush_lsn,replay_lsn) / 1024)::int as replay, \
                (pg_wal_lsn_diff(pg_current_wal_lsn(),replay_lsn))::int / 1024 as total_lag from pg_stat_replication;"