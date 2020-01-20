import 'package:ens_app/models/user_model.dart';
import 'package:ens_app/views/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffeeeeee),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xffeeeeee),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "DZ"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "DZ"),
      title: 'ENS APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xffeeeeee)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formkey = GlobalKey<FormState>();

  final ref = FirebaseDatabase.instance.reference();

  String _userId, _password;
  UserData user;

  void getUserDetails(String userId, String password) async {
    await ref.child("/Users/").once().then(
      (DataSnapshot snap) {
        var keys = snap.value.keys;
        var data = snap.value;
        for (var key in keys) {
          if (data[key]['user_id'] == userId.toString()) {
            user = UserData(data[key]['user_id'], data[key]['password']);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        primary: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 300),
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
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
                      ]),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 7, right: 50),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      maxLength: 16,
                      keyboardType: TextInputType.number,
                      validator: (input) =>
                          input.length != 16 ? "رقم التسجيل خاطئ" : null,
                      onSaved: (input) => _userId = input,
                      decoration: InputDecoration.collapsed(
                        hintText: 'رقم التسجيل',
                        hintStyle: TextStyle(letterSpacing: 1.5, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
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
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 7, right: 50),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      validator: (input) => input.length < 6
                          ? "يجب أن تكون كلمة السر أطول من 6 حروف"
                          : null,
                      onSaved: (input) => _password = input,
                      decoration: InputDecoration.collapsed(
                        hintText: 'كلمة السر',
                        hintStyle: TextStyle(letterSpacing: 1.5, fontSize: 20),
                      ),
                      obscureText: true,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 50, right: 50),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        _submit();
                      },
                      elevation: 0,
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'تسجيل الدخول',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
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
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        child: RaisedButton(
                          onPressed: () {
                            _showDialog();
                          },
                          elevation: 0,
                          padding: EdgeInsets.only(right: 1),
                          color: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.info_outline,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            'حول البرنامج',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          content: Text(
            'هذا برنامج لمذكرة تخرج لمالكية محمد و دحدي وليد.',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 18),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('حسنا'),
            )
          ],
        );
      },
    );
  }

  void userAuth() {
    if (user.userId == _userId) {
      if (user.password == _password) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotesPage(
              userId: user.userId,
            ),
          ),
        );
      }
    }
  }

  void _submit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      getUserDetails(_userId, _password);
      userAuth();
    }
  }
}
