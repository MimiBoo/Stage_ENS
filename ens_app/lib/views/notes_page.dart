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
  String _id, _name;
  @override
  void initState() {
    for (var subj in _subjects) {
      ref.child('/Marks/$subj').once().then((DataSnapshot snap) {
        var keys = snap.value.keys;
        var data = snap.value;
        for (var key in keys) {
          if (data[key]['Std_num'] == widget.userId.toString()) {
            setState(() {
              _id = data[key]['Std_num'];
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
          user_notes = UserNotes(_id, _name, notes);
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(user_notes.notes[0].exam1.toString()),
          Text(user_notes.notes[0].exam2.toString()),
          user_notes.notes[0].tp.toString() == null
              ? Container()
              : Text(user_notes.notes[0].tp.toString()),
          user_notes.notes[0].td.toString() == null
              ? Container()
              : Text(user_notes.notes[0].td.toString()),
        ],
      ),
    );
  }
}
