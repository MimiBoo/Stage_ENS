import 'package:ens_app/models/pdf_file.dart';
import 'package:ens_app/models/user_notes.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  final userId;

  const NotesPage({Key key, @required this.userId}) : super(key: key);
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final ref = FirebaseDatabase.instance.reference();
  List<String> _subjects = ['Translation', 'Computing'];
  List<Note> notes = List<Note>();
  UserNotes user_notes;
  String _name;
  bool isFinish = false;
  double total = 0;
  @override
  void initState() {
    super.initState();

    _setup();
  }

  Future<void> _setup() async {
    for (var subj in _subjects) {
      await ref.child('/Marks/$subj').once().then((DataSnapshot snap) {
        var keys = snap.value.keys;
        var data = snap.value;
        for (var key in keys) {
          if (data[key]['Std_num'] == widget.userId.toString()) {
            setState(() {
              _name = data[key]['Std_name'];
            });

            notes.add(
              Note(
                data[key]['Exam1'],
                data[key]['Exam2'],
                data[key]['tp'],
                data[key]['td'],
                data[key]['Ratrapage'],
                data[key]['Subject_name'],
                data[key]['Teacher_name'],
              ),
            );
          }
        }
        setState(() {
          user_notes = UserNotes(widget.userId, _name, notes);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: user_notes == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                  Text('تحميل'),
                ],
              ),
            )
          : body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20, top: 40),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-12, -12),
                        blurRadius: 12,
                        color: Color(0xFFFFFFFF).withOpacity(1),
                      ),
                      BoxShadow(
                        offset: Offset(12, 12),
                        blurRadius: 12,
                        color: Color(0xFF000000).withOpacity(.1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      elevation: 0,
                      padding: EdgeInsets.only(right: 1),
                      color: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.arrow_back,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    'كشف النقاط',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Simple',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-12, -12),
                        blurRadius: 12,
                        color: Color(0xFFFFFFFF).withOpacity(1),
                      ),
                      BoxShadow(
                        offset: Offset(12, 12),
                        blurRadius: 12,
                        color: Color(0xFF000000).withOpacity(.1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: RaisedButton(
                      onPressed: () {
                        PdfResault res = PdfResault(
                          usernotes: user_notes,
                        );

                        res.createPdf();
                      },
                      elevation: 0,
                      padding: EdgeInsets.only(right: 1),
                      color: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.file_download,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 20, top: 100),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        'رقم التسجيل: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        user_notes.id,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        'إسم و اللقب: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        user_notes.fullname,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              child: DataTable(
                horizontalMargin: 20,
                sortColumnIndex: 0,
                sortAscending: true,
                columnSpacing: 0,
                columns: [
                  DataColumn(
                    label: Text(
                      'المادة',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'المعامل',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'النتيجة',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                rows: _notesTable(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 100, left: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'المجموع',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    isFinish ? (total).round().toString() : '0',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 100, left: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'المعدل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    isFinish ? (total / 4).toStringAsFixed(2) : '0',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: (total / 4) < 10 ? Colors.red : Colors.green),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DataRow> _notesTable() {
    List<DataRow> _rows = [];
    double resault;
    double temp = 0;
    for (var subj in user_notes.notes) {
      if (subj.td != null && subj.tp == null) {
        resault = (subj.exam1 + subj.exam2 + subj.td) / 3;

        temp += resault;

        _rows.add(
          DataRow(
            cells: [
              DataCell(
                Container(
                  width: 200,
                  child: Text(
                    '${subj.subject}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Text(
                  '01',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              DataCell(
                Text(
                  '${resault.round() * 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: resault < 10 ? Colors.red : Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }
      if (subj.tp != null && subj.td == null) {
        resault = (subj.exam1 + subj.exam2 + subj.tp) / 3;

        temp += resault;

        _rows.add(
          DataRow(
            cells: [
              DataCell(
                Container(
                  width: 200,
                  child: Text(
                    '${subj.subject}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Text(
                  '01',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              DataCell(
                Text(
                  '${resault.round() * 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: resault < 10 ? Colors.red : Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }
      if (subj.tp != null && subj.td != null) {
        resault = (subj.exam1 + subj.exam2 + (subj.tp + subj.td) / 2) / 3;

        temp += resault;

        _rows.add(
          DataRow(
            cells: [
              DataCell(
                Container(
                  width: 200,
                  child: Text(
                    '${subj.subject}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Text(
                  '01',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              DataCell(
                Text(
                  '${resault.round() * 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: resault < 10 ? Colors.red : Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }
      if (subj.tp == null && subj.td == null) {
        resault = (subj.exam1 + subj.exam2) / 2;

        temp += resault;

        _rows.add(
          DataRow(
            cells: [
              DataCell(
                Container(
                  width: 200,
                  child: Text(
                    '${subj.subject}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Text(
                  '01',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              DataCell(
                Text(
                  '${resault.round() * 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: resault < 5 ? Colors.red : Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }
    }
    setState(() {
      total = temp;
      isFinish = true;
    });
    return _rows;
  }
}
