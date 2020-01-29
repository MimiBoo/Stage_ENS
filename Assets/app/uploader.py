from firebase import firebase as fb
import pyodbc


def read(conn, firebase):
    print("Read")
    cursor = conn.cursor()
    points = cursor.execute(
        "select exam1,exam2,tp, td,ratrapage,Student.std_num as student, Student.std_name as student,Student.std_lastname as student, Subject.subj_name as subject, Teacher.teach_name as teacher,Teacher.teach_lastname as teacher\
        from Point \
        INNER JOIN Student ON Point.std_num =student.std_num\
        INNER JOIN Subject ON Point.subj_num =subject.subj_num\
        INNER JOIN Teacher ON Point.teach_num =teacher.teach_num ")
    for row in points:
        print(row)
        data = {
            "Std_num": row[5],
            "Std_name": row[6] + ' ' + row[7],
            "Subject_name": row[8],
            "Teacher_name": row[9] + ' ' + row[10],
            'Exam1': row[0],
            'Exam2': row[1],
            'tp': row[2],
            'td': row[3],
            'Ratrapage': row[4],
        }
        resault = firebase.post(f"/Marks/{row[8]}", data)
        print(resault)

    print('')


conn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=MIMI\\SQLEXPRESS;"
                      "Database=Stage_ENS;"
                      "Trusted_Connection=yes;")

firebase = fb.FirebaseApplication("https://stage-9594d.firebaseio.com/", None)

read(conn, firebase)
