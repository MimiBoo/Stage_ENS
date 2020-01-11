from firebase import firebase as fb
import pyodbc


def read(conn, firebase):
    print("Read")
    cursor = conn.cursor()
    points = cursor.execute("select * from Point")
    for row in points:
        students = cursor.execute(
            f"select std_num, std_name, std_lastname from Student where std_num={row[6]}"
        )
        student = students.fetchone()
        subjects = cursor.execute(
            f"select subj_name from Subject where subj_num={row[7]}")
        subject = subjects.fetchone()
        teachers = cursor.execute(
            f"select teach_name, teach_lastname from Teacher where teach_num={row[8]}"
        )
        teacher = teachers.fetchone()
        data = {
            "Std_num": student[0],
            "Std_name": student[1] + ' ' + student[2],
            "Subject_name": subject[0],
            "Teacher_name": teacher[0] + ' ' + teacher[1],
            'Exam1': row[1],
            'Exam2': row[2],
            'tp': row[3],
            'td': row[4],
            'Ratrapage': row[5],
        }
        print(student)
        resault = firebase.post("/Marks", data)
        print(resault)

    print('')


conn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=MIMI\\SQLEXPRESS;"
                      "Database=Stage_ENS;"
                      "Trusted_Connection=yes;")

firebase = fb.FirebaseApplication("https://stage-9594d.firebaseio.com/", None)

read(conn, firebase)
