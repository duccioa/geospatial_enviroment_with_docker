# Python 3.6
# Import
import psycopg2 as ps
# Fetch connection address of localhost
host_name = 'db'
db_name = 'GEO'
usr_name = 'DOCKER'
psw = 'DOCKER'
port_num = 5432

conn_str = f"dbname={db_name} user={usr_name} host={host_name}"\
           f"password={psw} port={port_num}"
try:
  conn = ps.connect(conn_str)
except psycopg2.Error as e:
  logger.error('Connection failed: ' + str(e))

cur = conn.cursor()
cur.execute("SHOW data_directory;")
data_folder = cur.fetchall()

print(data_folder)

conn.close()