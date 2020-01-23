unit Stage;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.DBCGrids, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel5: TPanel;
    DBText1: TDBText;
    Panel6: TPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    SearchBox1: TSearchBox;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
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

uses Data, add_Stage, Edit_Stage;
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
      Form6.Color := NightBlue;

      Form6.Panel1.Color:= NightBlue;
      Form6.Body.Color := LightBlue;

      Form6.Panel2.Color:= BtnBlue;
      Form6.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form6.Panel3.Color:= BtnBlue;
      Form6.Panel3.Font.Color:=  TColor(RGB(255, 255, 255));

      Form6.Panel4.Color:= BtnBlue;
      Form6.Panel4.Font.Color:=  TColor(RGB(255, 255, 255));
end;

procedure TForm6.Image1Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Image2Click(Sender: TObject);
begin
 if Form6.WindowState = wsNormal then
   begin
        Form6.WindowState:=wsMaximized;
        with Screen.WorkAreaRect do
            Form6.SetBounds(Left, Top, Right - Left, Bottom - Top);
   end
       else
       begin
         Form6.WindowState:=wsNormal;
       end;
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
    if Form6.WindowState = wsNormal then
   begin
        Form6.WindowState:=wsMinimized;
   end else
       begin
         Form6.WindowState:=wsMinimized;
       end;
end;

procedure TForm6.Panel2Click(Sender: TObject);
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

end;

procedure TForm6.Panel3Click(Sender: TObject);
begin

dbData.StudentTable.Edit;

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
  // SQL.Text := 'select * from State where state_num = '+quotedstr(dbData.StudentTablestate_num.AsString);
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
    Form8.DBComboBoxstate_num.Text :=  dbData.StateTable['state_name'] ;

      dbData.StateTable.Next;
    end;
 end;

//Form8.DBComboBoxclass_num.Text :=  dbData.StudentTableclass_num.AsString;
//Form8.DBComboBoxstate_num.Text :=  dbData.StudentTablestate_num.AsString;

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

procedure TForm6.SearchBox1Change(Sender: TObject);
var nom:string ;
begin


try


dbData.StudentTable.SQL.Clear;
dbData.StudentTable.SQL.Add('SELECT * from Student  where [std_name]  like '+QuotedStr(SearchBox1.Text+'%'));
dbData.StudentTable.Open;


finally

end;

end;

end.
