import psycopg2
import subprocess
import os
from datetime import date, datetime


backup_dir = "/var/lib/postgresql/backup"

pgsql_user = "{{ postgresql_admin_user }}"
pgsql_pass = "{{ postgresql_admin_pass }}"
pgsql_host = "{{ postgresql_listen_ip }}"

if not os.path.exists(backup_dir):
    os.mkdir(backup_dir)

conn = psycopg2.connect("user={} host={} password={}".format(
    pgsql_user, pgsql_host, pgsql_pass
))


def create_backup():
    cur = conn.cursor()
    cur.execute("SELECT datname from pg_database")
    databases = [db[0] for db in cur.fetchall()]

    system_db = ["template1", "template0", "postgres"]

    for db in databases:
	if db not in system_db:
	    com = "PGPASSWORD='{0}' pg_dump -h {1} -U {2} {3} -F c -Z 9 > {4}/{5}-{6}.sql".format(
                pgsql_pass, pgsql_host, pgsql_user, db, backup_dir, db, datetime.now().date()
            )
	    subprocess.call(com, shell=True)
	   

if __name__ == "__main__":
    create_backup()