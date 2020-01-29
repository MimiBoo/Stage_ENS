unit Edit_Stage;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TForm8 = class(TForm)
    Body: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel7: TPanel;
    Panel2: TPanel;
    bDate: TDateTimePicker;
    Label1: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBoxstate_num: TComboBox;
    DBComboBoxclass_num: TComboBox;
    ComboBoxspec_num: TComboBox;
    Label11: TLabel;
    ComboBoxdiv_num: TComboBox;
    Label10: TLabel;
    procedure Panel2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
          NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data, Unit17;
 procedure TForm8.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm8.FormCreate(Sender: TObject);

var
    aShape: TShape;
begin
NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form8.Color := NightBlue;

      Form8.Panel1.Color:= NightBlue;
      Form8.Body.Color := LightBlue;

      Form8.Panel2.Color:= BtnBlue;
      Form8.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form8.Panel7.Color:= BtnBlue;
      Form8.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));
end;

procedure TForm8.Image1Click(Sender: TObject);
begin
DBComboBoxclass_num.Items.Clear;
DBComboBoxstate_num.Items.Clear;
dbData.StudentTable.Cancel;
close;
end;

procedure TForm8.Panel2Click(Sender: TObject);

    var vali: integer;
begin
  // ����� �������� ���� ������� �� ���� ��� ��� ����� �������
  vali := Messagedlg('�� ���� ���� ����� ��� ������',mtConfirmation, [mbYes, mbNo], 0);

if  vali = mrYes  then
begin
dbData.StudentTable.Edit;
dbData.StudentTablebDate.AsDateTime := bDate.DateTime;


with dbData.ClassTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Class where class_name = '+quotedstr(DBComboBoxclass_num.Text);
   Open;

   dbData.ClassTable.First;

   while not dbData.ClassTable.Eof do
    begin
    dbData.StudentTableclass_num.AsInteger :=  StrtoInt(dbData.ClassTable['class_num']) ;

      dbData.ClassTable.Next;
    end;
 end;

 with dbData.StateTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from State where state_name = '+quotedstr(DBComboBoxstate_num.Text);
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
 //   dbData.StudentTablestate_num.AsInteger :=  StrtoInt(dbData.StateTable['state_num']) ;

      dbData.StateTable.Next;
    end;
 end;

dbData.StudentTable.Post;

end;


end;

procedure TForm8.Panel7Click(Sender: TObject);
begin
DBComboBoxclass_num.Items.Clear;
DBComboBoxstate_num.Items.Clear;
  dbData.StudentTable.Cancel;
  close
end;

end.
