import mysql.connector



def addData(rfid: str, checkin: str):
    myconn = mysql.connector.connect(host = "localhost", user = "Nhan", passwd = "Nh@n", database = "IOT_Face")
    cur = myconn.cursor()
    try:
        cur.execute(f"update 20146_class set checkin = '{checkin}' where rfid = '{rfid}'")
        myconn.commit()
        
        return "ok" 

    except:
        myconn.rollback()

    myconn.close()


if __name__ == '__main__':
    addData("123123asd", "14:28")