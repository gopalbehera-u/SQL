import mysql.connector

conn=mysql.connector.connect(host='localhost',user='root',password='Password')


mycurser=conn.cursor()

mycurser.execute("Show Databases")

for x in mycurser :
    print(x)