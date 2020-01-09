from firebase import firebase as fb
import pyodbc


def read(conn, firebase):
    print("Read")
    cursor = conn.cursor()
    cursor.execute("select * from class")
    for row in cursor:
        data = {
            "class_num":row[0],
            "class_name":row[1],
            "div_name":row[2],
            "spec_name":row[3],
        }
        resault = firebase.post("/Class", data)
        print(resault)

    print('')


conn = pyodbc.connect(
    "Driver={SQL Server Native Client 11.0};"
    "Server=MIMI\\SQLEXPRESS;"
    "Database=Stage_ENS;"
    "Trusted_Connection=yes;"
    )

firebase = fb.FirebaseApplication("https://stage-9594d.firebaseio.com/", None)

read(conn, firebase)
