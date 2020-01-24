import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'الجمهورية الجزائرية الديموقراطية الشعبية',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'République Algérienne Démocratique et populaire',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'وزارة التعليــم العالــي و البحــث العلمــي',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'Ministére de l\'Enseignement Supérieur \n      et de la Recherche Scientifique',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'المدرسة العلــيا للأساتــذة بورقلــة',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'Ecole Normale Supérieur d\'Ouargla',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'كشف النقاط',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'رقم التسجيل:  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'الإسم و اللقب:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'الإسم و اللقب:  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'الإسم و اللقب:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
