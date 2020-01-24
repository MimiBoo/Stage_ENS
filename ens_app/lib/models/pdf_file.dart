import 'dart:io';

import 'package:ens_app/models/user_notes.dart';
import 'package:flutter/material.dart' as pw;
import 'package:downloads_path_provider/downloads_path_provider.dart';
import 'package:flutter/services.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfResault {
  final UserNotes usernotes;

  PdfResault({this.usernotes});

  final Document pdf = Document();
  Future<Directory> downloadsDirectory =
      DownloadsPathProvider.downloadsDirectory;

  void createPdf() async {
    var data = await rootBundle.load("assets/fonts/Simplified Arabic.ttf");
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'الجمهورية الجزائرية الديموقراطية الشعبية',
                        style: TextStyle(
                          color: PdfColors.black,
                          fontSize: 16,
                          font: Font.ttf(data),
                        ),
                      ),
                      Text(
                        'République Algérienne Démocratique et populaire',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        'وزارة التعليــم العالــي و البحــث العلمــي',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        'Ministére de l\'Enseignement Supérieur \n      et de la Recherche Scientifique',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        'المدرسة العلــيا للأساتــذة بورقلــة',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        'Ecole Normale Supérieur d\'Ouargla',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            font: Font.ttf(data)),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'كشف النقاط',
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            font: Font.ttf(data)),
                      ),
                    ],
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
                            color: PdfColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        usernotes.id,
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            font: Font.ttf(data)),
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
                            color: PdfColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            font: Font.ttf(data)),
                      ),
                      Text(
                        usernotes.fullname,
                        style: TextStyle(
                            color: PdfColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            font: Font.ttf(data)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
    print(downloadsDirectory);
    final file = File("$downloadsDirectory/example.pdf");
    await file.writeAsBytes(pdf.save());
  }
}

/*
List<DataRow> _notesTable() {
  List<DataRow> _rows = [];
  double resault;
  double temp = 0;
}*/
