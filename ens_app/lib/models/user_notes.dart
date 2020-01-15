class UserNotes {
  String fullname, id;
  List<Note> notes;

  UserNotes(this.id, this.fullname, this.notes);
}

class Note {
  int exam1, exam2, tp, td;
  bool ratrapage;
  String subject, teacher;
  Note(this.exam1, this.exam2, this.tp, this.td, this.ratrapage, this.subject,
      this.teacher);
}
