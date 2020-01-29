from firebase import firebase as fb
import pyodbc


def read(conn, firebase):
    print("Read")
    cursor = conn.cursor()
    users = cursor.execute("select * from Users")
    for row in users:
        print(row)

        data = {
            "Id": row[0],
            "user_id": row[1],
            "password": row[2],
        }
        resault = firebase.post("/Users", data)
        print(resault)

    print('')


conn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=MIMI\\SQLEXPRESS;"
                      "Database=Stage_ENS;"
                      "Trusted_Connection=yes;")

firebase = fb.FirebaseApplication("https://stage-9594d.firebaseio.com/", None)

read(conn, firebase)
