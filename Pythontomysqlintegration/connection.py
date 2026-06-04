import mysql.connector

conn=mysql.connector.connect(host='localhost',user='root',password='Password')

if conn.is_connected():
    print("Done!")


