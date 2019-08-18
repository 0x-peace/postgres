#!/bin/bash

sudo -H -u postgres /usr/lib/postgresql/11/bin/pg_waldump -f -p /var/lib/postgresql/11/main/pg_wal $(psql -qAtX -c "select pg_walfile_name(pg_current_wal_lsn());")