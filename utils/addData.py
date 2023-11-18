import mysql.connector
from datetime import datetime



def addData(rfid: str, checkin: str):
    cur_m_d = datetime.now().strftime("%m-%d")
    week_col = ["W_1","W_2","W_3","W_4","W_5","W_6","W_7","W_8","W_9","W_10","W_11","W_12","W_13","W_14","W_15"]
    week_arr = ["09-24","10-01","10-08","10-15","10-22","10-29","11-05","11-12","11-19","11-26","12-03","12-10","12-17","12-24","12-31"]
    for i in range(len(week_arr)):
        if cur_m_d <week_arr[i]:
            break
    myconn = mysql.connector.connect(host = "localhost", user = "Nhan", passwd = "Nh@n", database = "IOT_Face")
    cur = myconn.cursor()
    try:
        cur.execute(f"update class set '{week_col[i-1]}' = '{checkin}' where rfid = '{rfid}'")
        myconn.commit()
        
        return "ok" 

    except:
        myconn.rollback()

    myconn.close()


if __name__ == '__main__':
    addData("123123asd", "14:28")