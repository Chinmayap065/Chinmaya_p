import mysql.connector

conn = mysql.connector.connect(host="localhost",username="root",
                               password="root123",database="learning")

my_cursor =conn.cursor()

#ins ="insert into student (s_id,s_name) values (%s,%s)"
#val = (1,"Sam")
#val=(2,"Seema")
#y_cursor.execute(ins,val)

#upd = "update student set s_name = %s where s_id=%s"
#val=("Rajesh",2)
#my_cursor.execute(upd,val)
#delete = "delete from student where s_id= %s"
#valz= (2,)
#my_cursor.execute(delete,valz)
select="select * from student"

result = my_cursor.execute(select)

result= my_cursor.fetchall()
for row in result:
    print(row)
conn.commit()
conn.close()

print("Connected Sucessfully")