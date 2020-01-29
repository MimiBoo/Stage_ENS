unit Data;

interface

uses
  Windows,System.Variants,System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdbData = class(TDataModule)
    DataSourceSpec: TDataSource;
    Stage_ensConnection: TFDConnection;
    DataSourceAdmen: TDataSource;
    DataSourceTeacher: TDataSource;
    DataSourceApsent: TDataSource;
    DataSourcePoint: TDataSource;
    DataSourceDiv: TDataSource;
    DataSourceClass: TDataSource;
    DataSourceSubject: TDataSource;
    DataSourceState: TDataSource;
    DataSourceStudent: TDataSource;
<<<<<<< HEAD
    DataSourceMunicipal: TDataSource;
    AdmenTable: TFDQuery;
    ApsentTable: TFDQuery;
    ClassTable: TFDQuery;
    DivisionTable: TFDQuery;
    MunicipalTable: TFDQuery;
    SpecTable: TFDQuery;
    StateTable: TFDQuery;
    StudentTable: TFDQuery;
    SubjectTable: TFDQuery;
    TeacherTable: TFDQuery;
    ApsentTableapsent_num: TFDAutoIncField;
    ApsentTableapsent_date: TDateField;
    ApsentTableapsent_time: TTimeField;
    ApsentTablestd_num: TStringField;
    TeacherTableteach_num: TFDAutoIncField;
    TeacherTableteach_name: TStringField;
    TeacherTableteach_lastname: TStringField;
    TeacherTableteach_level: TStringField;
    TeacherTableteach_head: TStringField;
    SpecTablespec_num: TFDAutoIncField;
    SpecTablespec_name: TStringField;
    SubjectTablesubj_num: TFDAutoIncField;
    SubjectTablesubj_name: TStringField;
    SubjectTableMultiplier: TIntegerField;
=======
    StudentTable: TFDQuery;
    StudentTablestd_num: TStringField;
    StudentTablestd_name: TStringField;
    StudentTablestd_lastname: TStringField;
    StudentTablebDate: TDateField;
    StudentTablebDate_place: TStringField;
    StudentTableclass_num: TIntegerField;
    StudentTablestate_num: TIntegerField;
    StateTable: TFDQuery;
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
    StateTablestate_num: TFDAutoIncField;
    StateTablestate_name: TStringField;
    DivisionTablediv_num: TFDAutoIncField;
    DivisionTablediv_name: TStringField;
<<<<<<< HEAD
    AdmenTableUser_Name: TStringField;
    AdmenTablePassword: TStringField;
    ClassTableclass_num: TFDAutoIncField;
    ClassTableclass_name: TStringField;
    MunicipalTableMunicipal_num: TFDAutoIncField;
    MunicipalTableMunicipal_mane: TStringField;
    MunicipalTablestate_num: TIntegerField;
    DataSourcePonintviews: TDataSource;
    DataSourceStudentview: TDataSource;
    StudentTablestd_num: TStringField;
    StudentTablestd_name: TStringField;
    StudentTablestd_lastname: TStringField;
    StudentTablebDate: TDateField;
    StudentTableclass_num: TIntegerField;
    StudentTablediv_num: TIntegerField;
    StudentTablespec_num: TIntegerField;
    StudentTablestate_num: TIntegerField;
    StudentviewView: TFDQuery;
    StudentviewViewstd_num: TStringField;
    StudentviewViewstd_name: TStringField;
    StudentviewViewstd_lastname: TStringField;
    StudentviewViewbDate: TDateField;
    StudentviewViewdiv_name: TStringField;
    StudentviewViewclass_name: TStringField;
    StudentviewViewspec_name: TStringField;
    StudentviewViewstate_name: TStringField;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable1SumAll: TFloatField;
    FDMemTable1Multiplier: TIntegerField;
    FDMemTable1Average: TFloatField;
    FDMemTable1Result: TStringField;
=======
    ClassTable: TFDQuery;
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
    PointTable: TFDQuery;
    PointTablepoint_num: TFDAutoIncField;
    PointTabletp: TFloatField;
    PointTabletd: TFloatField;
    PointTableexama1: TFloatField;
    PointTableexama2: TFloatField;
    PointTableratrapage: TFloatField;
    PointTablestd_num: TStringField;
    PointTablesubj_num: TIntegerField;
    PointTableteach_num: TIntegerField;
<<<<<<< HEAD
    PointTableYear: TIntegerField;
    PonintviewsView: TFDQuery;
    PonintviewsViewsubj_name: TStringField;
    PonintviewsViewtp: TFloatField;
    PonintviewsViewtd: TFloatField;
    PonintviewsViewexama1: TFloatField;
    PonintviewsViewexama2: TFloatField;
    PonintviewsViewYear: TIntegerField;
    PonintviewsViewratrapage: TFloatField;
    PonintviewsViewMultiplier: TIntegerField;
    PonintviewsViewstd_num: TStringField;
    PonintviewsViewSum: TFloatField;
    FDMemTable1Ratrapage: TFloatField;
    RatrapageviewView: TFDQuery;
    DataSourceRatrapageview: TDataSource;
    RatrapageviewViewtp: TFloatField;
    RatrapageviewViewtd: TFloatField;
    RatrapageviewViewexama1: TFloatField;
    RatrapageviewViewexama2: TFloatField;
    RatrapageviewViewYear: TIntegerField;
    RatrapageviewViewsubj_name: TStringField;
    RatrapageviewViewMultiplier: TIntegerField;
    RatrapageviewViewstd_num: TStringField;
    RatrapageviewViewratrapage: TFloatField;
    RatrapageviewViewSum: TFloatField;
    PonintviewsViewR: TStringField;
    procedure PonintviewsViewCalcFields(DataSet: TDataSet);
    procedure StudentviewViewError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure RatrapageviewViewCalcFields(DataSet: TDataSet);
=======
    AdminTable: TFDQuery;
    SubjectTable: TFDQuery;
    TeacherTable: TFDQuery;
    ApsentTable: TFDQuery;
    AdminTableUser_Name: TStringField;
    AdminTablePassword: TStringField;
    ClassTableclass_num: TFDAutoIncField;
    ClassTableclass_name: TStringField;
    ClassTablediv_num: TIntegerField;
    ClassTablespec_num: TIntegerField;
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbData: TdbData;
  sumAll : real;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit17;

{$R *.dfm}


procedure TdbData.PonintviewsViewCalcFields(DataSet: TDataSet);
var TP,TD,exama1,exama2,sum,x,ratrapage:real;
begin


//if (dbData.PonintviewsView.FieldByName('ratrapage').Value = NULL) then
// begin


    if (dbData.PonintviewsView.FieldByName('tp').AsVariant = NULL) and (dbData.PonintviewsView.FieldByName('td').AsVariant = NULL) then
      begin
        exama1 := dbData.PonintviewsView.FieldByName('exama1').AsFloat;
        exama2 := dbData.PonintviewsView.FieldByName('exama2').AsFloat;
        sum := (exama1+exama2)/2;



        dbData.PonintviewsView.FieldByName('Sum').AsFloat:= sum;

        if sum >= 10 then
         begin
           dbData.PonintviewsView.FieldByName('R').AsString:= '��' ;
         end
         else
          begin
            dbData.PonintviewsView.FieldByName('R').AsString:= '���' ;
          end;

      end
      else

         if (dbData.PonintviewsView.FieldByName('tp').AsVariant = NULL) then
            begin
        exama1 := dbData.PonintviewsView.FieldByName('exama1').AsFloat;
        exama2 := dbData.PonintviewsView.FieldByName('exama2').AsFloat;
        TD := dbData.PonintviewsView.FieldByName('td').AsFloat;
        sum := (exama1+exama2+TD)/3;

        dbData.PonintviewsView.FieldByName('Sum').AsFloat:= sum;

        if sum >= 10 then
         begin
           dbData.PonintviewsView.FieldByName('R').AsString:= '��' ;
         end
         else
          begin
            dbData.PonintviewsView.FieldByName('R').AsString:= '���';
          end;

            end
            else

       if (dbData.PonintviewsView.FieldByName('td').AsVariant = NULL) then
            begin
        exama1 := dbData.PonintviewsView.FieldByName('exama1').AsFloat;
        exama2 := dbData.PonintviewsView.FieldByName('exama2').AsFloat;
        TP := dbData.PonintviewsView.FieldByName('tp').AsFloat;
        sum := (exama1+exama2+TP)/3;

       dbData.PonintviewsView.FieldByName('Sum').AsFloat:= sum;

       if sum >= 10 then
         begin
           dbData.PonintviewsView.FieldByName('R').AsString:= '��' ;
         end
         else
          begin
            dbData.PonintviewsView.FieldByName('R').AsString:= '���';
          end;


            end
            else

        if (dbData.PonintviewsView.FieldByName('td').AsVariant <> NULL) and (dbData.PonintviewsView.FieldByName('tp').AsVariant <> NULL)
                 and (dbData.PonintviewsView.FieldByName('exama1').AsVariant <> NULL) and (dbData.PonintviewsView.FieldByName('exama2').AsVariant <> NULL) then
            begin
        exama1 := dbData.PonintviewsView.FieldByName('exama1').AsFloat;
        exama2 := dbData.PonintviewsView.FieldByName('exama2').AsFloat;
        TD := dbData.PonintviewsView.FieldByName('td').AsFloat;
        TP := dbData.PonintviewsView.FieldByName('tp').AsFloat;
        sum := ((exama1+exama2)+((TP + TD )/ 2)) / 3;


        dbData.PonintviewsView.FieldByName('Sum').AsFloat:= sum;

        if sum >= 10 then
         begin
           dbData.PonintviewsView.FieldByName('R').AsString:= '��' ;
         end
         else
          begin
            dbData.PonintviewsView.FieldByName('R').AsString:= '���';
          end;



      end;
// end;
 ///////////////////////////////////////////////  ratrapage
//  else
//
//    if (dbData.PonintviewsView.FieldByName('tp').AsVariant = NULL) and (dbData.PonintviewsView.FieldByName('td').AsVariant = NULL) then
//      begin
//
//
//
//        dbData.RatrapageviewView.FieldByName('Sum').AsFloat := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
//
//      end
//      else
//
//      if (dbData.PonintviewsView.FieldByName('tp').AsVariant = NULL) then
//            begin
//
//        ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
//
//        TD := dbData.RatrapageviewView.FieldByName('td').AsFloat;
//        sum := ((ratrapage * 2) + TD)/3;
//
//        dbData.RatrapageviewView.FieldByName('Sum').Value:= sum;
//
//            end
//            else
//
//        if (dbData.PonintviewsView.FieldByName('td').AsVariant = NULL) then
//            begin
//
//            ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
//              TP := dbData.RatrapageviewView.FieldByName('tp').AsFloat;
//              sum := ((ratrapage * 2) + TP)/3;
//
//             dbData.RatrapageviewView.FieldByName('Sum').Value:= sum;
//
//            end
//            else
//
//      if (dbData.PonintviewsView.FieldByName('td').AsVariant <> NULL) and (dbData.PonintviewsView.FieldByName('tp').AsVariant <> NULL)
//                 and (dbData.PonintviewsView.FieldByName('exama1').AsVariant <> NULL) and (dbData.PonintviewsView.FieldByName('exama2').AsVariant <> NULL) then
//            begin
//              ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
//              exama1 := dbData.RatrapageviewView.FieldByName('exama1').AsFloat;
//              exama2 := dbData.RatrapageviewView.FieldByName('exama2').AsFloat;
//              TD := dbData.RatrapageviewView.FieldByName('td').AsFloat;
//              TP := dbData.RatrapageviewView.FieldByName('tp').AsFloat;
//              sum := ((ratrapage * 2)+((TP + TD )/ 2)) / 3;
//
//
//        dbData.RatrapageviewView.FieldByName('Sum').Value:= sum;





  //  end;





end;


procedure TdbData.RatrapageviewViewCalcFields(DataSet: TDataSet);
var TP,TD,exama1,exama2,sum,x,ratrapage:real;
begin

if (dbData.PonintviewsView.FieldByName('ratrapage').Value <> NULL) then
 begin

 if (dbData.RatrapageviewView.FieldByName('tp').AsVariant = NULL) and (dbData.RatrapageviewView.FieldByName('td').AsVariant = NULL) then
      begin


        RatrapageviewView.FieldByName('Sum').AsFloat := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;

      end
      else

      if (dbData.RatrapageviewView.FieldByName('tp').AsVariant = NULL) then
            begin

        ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;

        TD := dbData.RatrapageviewView.FieldByName('td').AsFloat;
        sum := ((ratrapage * 2) + TD)/3;

        RatrapageviewView.FieldByName('Sum').Value:= sum;

            end
            else

        if (dbData.RatrapageviewView.FieldByName('td').AsVariant = NULL) then
            begin

            ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
              TP := dbData.RatrapageviewView.FieldByName('tp').AsFloat;
              sum := ((ratrapage * 2) + TP)/3;

             RatrapageviewView.FieldByName('Sum').Value:= sum;

            end
            else

      if (dbData.RatrapageviewView.FieldByName('td').AsVariant <> NULL) and (dbData.RatrapageviewView.FieldByName('tp').AsVariant <> NULL)
                 and (dbData.RatrapageviewView.FieldByName('exama1').AsVariant <> NULL) and (dbData.RatrapageviewView.FieldByName('exama2').AsVariant <> NULL) then
            begin
              ratrapage := dbData.PonintviewsView.FieldByName('ratrapage').AsFloat;
              exama1 := dbData.RatrapageviewView.FieldByName('exama1').AsFloat;
              exama2 := dbData.RatrapageviewView.FieldByName('exama2').AsFloat;
              TD := dbData.RatrapageviewView.FieldByName('td').AsFloat;
              TP := dbData.RatrapageviewView.FieldByName('tp').AsFloat;
              sum := ((ratrapage * 2)+((TP + TD )/ 2)) / 3;


        RatrapageviewView.FieldByName('Sum').Value:= sum;

    end;

 end;
end;

procedure TdbData.StudentviewViewError(ASender, AInitiator: TObject;
  var AException: Exception);

var
  oExc: EFDDBEngineException;
begin
  if AException is EFDDBEngineException then begin
    oExc := EFDDBEngineException(AException);
    if oExc.Kind = ekRecordLocked then
      oExc.Message := 'Please, try the operation later. At moment, the record is busy'
    else if (oExc.Kind = ekUKViolated) and SameText(oExc[0].ObjName, 'UniqueKey_Orders') then
      oExc.Message := 'Please, provide the unique order information. It seems, your order was already put';
  end;
end;


end.
