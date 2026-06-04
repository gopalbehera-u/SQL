import mysql.connector


conn=mysql.connector.connect(host='localhost',user='root',password='Password')


mycurser=conn.cursor()

# mycurser.execute("create database gx ")


mycurser.execute('use gx')

# mycurser.execute("create table rtr (name varchar(33),branch varchar(55),id int)")

# mycurser.execute("show tables")
mycurser.execute('insert into rtr values ("gopal","it",1),("rahul","cse",2)')

conn.commit()

mycurser.execute("select * from rtr")

for x in mycurser :
    print(x)

