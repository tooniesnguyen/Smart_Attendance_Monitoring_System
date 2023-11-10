import mysql.connector

myconn = mysql.connector.connect(host = "localhost", user = "Nhan", passwd = "Nh@n", database = "IOT_Face")
cur = myconn.cursor()

rfid = "123123"
checkin = "14:20"

try:
    cur.execute(f"update 20146_class set checkin = '{checkin}' where rfid = '{rfid}'")
    myconn.commit()
    print("Update successs")

except:
    myconn.rollback()

myconn.close()