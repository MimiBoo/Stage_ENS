unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm14 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel5: TPanel;
    Image3: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    DBComboBoxspec_num: TComboBox;
    Label3: TLabel;
    DBComboBoxdiv_num: TComboBox;
    Label2: TLabel;
    DBComboBoxclass_num: TComboBox;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBoxdiv_numChange(Sender: TObject);
    procedure DBComboBoxclass_numChange(Sender: TObject);
    procedure DBComboBoxspec_numChange(Sender: TObject);

  private
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form14: TForm14;
    NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Data, Add_Subject, point;

procedure TForm14.Image1Click(Sender: TObject);
begin
close
end;

procedure TForm14.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm14.Button1Click(Sender: TObject);
begin
Form1.DBComboBoxsubj_name.Clear;
Form1.DBComboBoxteach_name.Clear;
 with dbData.TeacherTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Teacher';
   Open;

   dbData.TeacherTable.First;

   while not dbData.TeacherTable.Eof do
    begin
      Form1.DBComboBoxteach_name.Items.Add(dbData.TeacherTable['teach_name']);
      dbData.TeacherTable.Next;
    end;
 end;

  with dbData.SubjectTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Subject';
   Open;

   dbData.SubjectTable.First;

   while not dbData.SubjectTable.Eof do
    begin
      Form1.DBComboBoxsubj_name.Items.Add(dbData.SubjectTable['subj_name']);
      dbData.SubjectTable.Next;
    end;
 end;

//if dbData.PonintviewsViewHexagon.AsInteger = 0 then
//begin
//  Form1.DBEditHexagon.Text := '1';
//end;
//
//if dbData.PonintviewsViewHexagon.AsInteger = 1 then
//begin
//  Form1.DBEditHexagon.Text := '2';
//end;
//
//if dbData.PonintviewsViewHexagon.AsInteger = 2 then
//begin
//  Form1.DBEditHexagon.Text := '3';
//end;
//
//if dbData.PonintviewsViewHexagon.AsInteger = 3 then
//begin
//  Form1.DBEditHexagon.Text := '4';
//end;
//
//if dbData.PonintviewsViewHexagon.AsInteger = 4 then
//begin
//  Form1.DBEditHexagon.Text := '5';
//end;



dbData.StudentviewView.Edit;

Form1.ShowModal;
end;



procedure TForm14.DBComboBoxdiv_numChange(Sender: TObject);
begin
dbData.StudentviewView.SQL.Clear;
dbData.StudentviewView.SQL.Add('SELECT * from StudentView  where div_name  like '+QuotedStr(DBComboBoxdiv_num.Text+'%'));
dbData.StudentviewView.Open;

end;

procedure TForm14.DBComboBoxclass_numChange(Sender: TObject);
begin

dbData.StudentviewView.SQL.Clear;
dbData.StudentviewView.SQL.Add('SELECT * from StudentView  where class_name  like '+QuotedStr(DBComboBoxclass_num.Text+'%'));
dbData.StudentviewView.Open;

end;

procedure TForm14.DBComboBoxspec_numChange(Sender: TObject);
begin


dbData.StudentviewView.SQL.Clear;
dbData.StudentviewView.SQL.Add('SELECT * from StudentView  where spec_name  like '+QuotedStr(DBComboBoxspec_num.Text+'%'));
dbData.StudentviewView.Open;

end;

procedure TForm14.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
      NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form14.Color := NightBlue;

      Form14.Panel1.Color:= NightBlue;
      Form14.Body.Color := LightBlue;
//      Form14.Panel4.Color:= BtnBlue;
//      Form14.Panel4.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form14.Panel3.Color:= BtnBlue;
//      Form14.Panel3.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form14.Panel2.Color:= BtnBlue;
//      Form14.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));
end;

end.
