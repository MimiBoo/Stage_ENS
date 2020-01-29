unit Stage;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.DBCGrids, Vcl.DBCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm6 = class(TForm)
    Body: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    SearchBox1: TSearchBox;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DBComboBoxdiv_num: TComboBox;
    DBComboBoxclass_num: TComboBox;
    DBComboBoxspec_num: TComboBox;
    Panel16: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
<<<<<<< HEAD
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
=======
    procedure Panel6Click(Sender: TObject);
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
  private
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
    NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Data, add_Stage, Edit_Stage, Unit17;
   procedure TForm6.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm6.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
  NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Color := NightBlue;

      Panel1.Color:= NightBlue;
      Body.Color := LightBlue;

      Panel2.Color:= BtnBlue;
      Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Panel3.Color:= BtnBlue;
      Panel3.Font.Color:=  TColor(RGB(255, 255, 255));

      Panel7.Color:= BtnBlue;
      Panel7.Font.Color:=  TColor(RGB(255, 255, 255));

      Panel6.Color:= BtnBlue;
      Panel6.Font.Color:=  TColor(RGB(255, 255, 255));

end;

procedure TForm6.Image1Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Image2Click(Sender: TObject);
begin
 if WindowState = wsNormal then
   begin
        WindowState:=wsMaximized;
        with Screen.WorkAreaRect do
            SetBounds(Left, Top, Right - Left, Bottom - Top);
   end
       else
       begin
         WindowState:=wsNormal;
       end;
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
    if WindowState = wsNormal then
   begin
        WindowState:=wsMinimized;
   end else
       begin
         WindowState:=wsMinimized;
       end;
end;

procedure TForm6.Panel16Click(Sender: TObject);
begin

try
  with Form17.ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('from Stage_ENS.dbo.StudentView ');
    SQL.Add('where [class_name] = ' +QuotedStr(DBComboBoxclass_num.Text)
                                              +' and div_name ='+QuotedStr(DBComboBoxdiv_num.Text)
                                                          +'and spec_name = '+QuotedStr(DBComboBoxspec_num.Text));
    Open;
  end;





except
  on EZeroDivide do

end;

end;

procedure TForm6.Panel3Click(Sender: TObject);
begin

dbData.StudentTable.Edit;
Form17.ADOQuery1.Edit;
with dbData.ClassTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Class';
   Open;

   dbData.ClassTable.First;

   while not dbData.ClassTable.Eof do
    begin
      Form8.DBComboBoxclass_num.Items.Add(dbData.ClassTable['class_name']);
      dbData.ClassTable.Next;
    end;
 end;
 with dbData.DivisionTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Division';
   Open;

   dbData.DivisionTable.First;

   while not dbData.DivisionTable.Eof do
    begin
      Form8.ComboBoxdiv_num.Items.Add(dbData.DivisionTable['div_name']);
      dbData.DivisionTable.Next;
    end;
 end;
 with dbData.SpecTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Spec';
   Open;

   dbData.SpecTable.First;

   while not dbData.SpecTable.Eof do
    begin
      Form8.ComboBoxspec_num.Items.Add(dbData.SpecTable['spec_name']);
      dbData.SpecTable.Next;
    end;
 end;

 with dbData.StateTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from State';
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
      Form8.DBComboBoxstate_num.Items.Add(dbData.StateTable['State_name']);
      dbData.StateTable.Next;
    end;
 end;

Form8.bDate.DateTime := dbData.StudentTablebDate.AsDateTime;

with dbData.ClassTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Class where class_num = '+quotedstr(dbData.StudentTableclass_num.AsString);
   Open;

   dbData.ClassTable.First;

   while not dbData.ClassTable.Eof do
    begin
    Form8.DBComboBoxclass_num.Text :=  dbData.ClassTable['class_name'];

      dbData.ClassTable.Next;
    end;
 end;

 with dbData.StateTable do
 begin
   Close;
   SQL.Clear;
  SQL.Text := 'select * from State where state_num = '+quotedstr(dbData.StudentTablestate_num.AsString);
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
    Form8.DBComboBoxstate_num.Text :=  dbData.StateTable['state_name'] ;

      dbData.StateTable.Next;
    end;
 end;

Form8.DBComboBoxclass_num.Text :=  dbData.StudentTableclass_num.AsString;
Form8.DBComboBoxstate_num.Text :=  dbData.StudentTablestate_num.AsString;

Form8.ShowModal;

end;

procedure TForm6.Panel4Click(Sender: TObject);
    var vali: integer;
begin
  // ����� �������� ���� ������� �� ���� ��� ��� ����� �������
  vali := Messagedlg('�� ���� ��� ��� ������ ',mtCustom, [mbYes, mbNo], 0);

if  vali = mrYes  then
begin
dbData.StudentTable.Delete;
  ShowMessage('�� �����');
end;

end;

<<<<<<< HEAD
procedure TForm6.Panel7Click(Sender: TObject);
begin

with dbData.ClassTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Class';
   Open;

   dbData.ClassTable.First;

   while not dbData.ClassTable.Eof do
    begin
      Form7.DBComboBoxclass_num.Items.Add(dbData.ClassTable['class_name']);
      dbData.ClassTable.Next;
    end;
 end;

 with dbData.DivisionTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Division';
   Open;

   dbData.DivisionTable.First;

   while not dbData.DivisionTable.Eof do
    begin
      Form7.ComboBoxdiv_num.Items.Add(dbData.DivisionTable['div_name']);
      dbData.DivisionTable.Next;
    end;
 end;
 with dbData.SpecTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Spec';
   Open;

   dbData.SpecTable.First;

   while not dbData.SpecTable.Eof do
    begin
      Form7.ComboBoxspec_num.Items.Add(dbData.SpecTable['spec_name']);
      dbData.SpecTable.Next;
    end;
 end;

 with dbData.StateTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from State';
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
      Form7.DBComboBoxstate_num.Items.Add(dbData.StateTable['State_name']);
      dbData.StateTable.Next;
    end;
 end;
Form7.ShowModal;


=======
procedure TForm6.Panel6Click(Sender: TObject);
begin
Panel6.Color:= clWhite;
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
end;

procedure TForm6.SearchBox1Change(Sender: TObject);
var nom:string ;
begin


try


Form17.ADOQuery1.SQL.Clear;
Form17.ADOQuery1.SQL.Add('SELECT * from Student  where [std_name]  like '+QuotedStr(SearchBox1.Text+'%'));
Form17.ADOQuery1.Open;


finally

end;

end;

end.
