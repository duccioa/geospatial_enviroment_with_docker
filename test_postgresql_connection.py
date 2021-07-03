# Python 3.6
# Import
import psycopg2 as ps
import logging
# Fetch connection address of localhost
db_host = 'db'
db_name = 'geo_sandbox'
db_user = 'docker'
db_pass = 'docker'
db_port = 5432

conn_str = "dbname={} user={} password={} host={} port={}".format(db_name,
                                                                  db_user,
                                                                  db_pass,
                                                                  db_host,
                                                                  db_port
                                                                  )

try:
  conn = ps.connect(conn_str)
except ps.Error as e:
  logging.error('Connection failed: ' + str(e))

cur = conn.cursor()
cur.execute("SHOW data_directory;")
data_folder = cur.fetchall()

print(data_folder)

conn.close()