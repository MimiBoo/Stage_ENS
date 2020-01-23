unit add_Stage;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Data.Win.ADODB;

type
  TForm7 = class(TForm)
    Body: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Editstd_name: TEdit;
    Editstd_lastname: TEdit;

    bDate: TDateTimePicker;
    Editstd_num: TEdit;
    Image3: TImage;
    DBComboBoxclass_num: TComboBox;
    DBComboBoxstate_num: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ComboBoxdiv_num: TComboBox;
    Button4: TButton;
    Label10: TLabel;
    Label11: TLabel;
    ComboBoxspec_num: TComboBox;
    Button5: TButton;
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
         procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Data, Add_class, Add_State, Add_Division, Add_Spec, Add_Municipal;

procedure TForm7.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm7.Button1Click(Sender: TObject);
begin





 dbData.ClassTable.Insert;
Form10.ShowModal;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin

with dbData.StateTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from State';
   Open;

   dbData.StateTable.First;

   while not dbData.StateTable.Eof do
    begin
      Form16.DBComboBoxstate_num.Items.Add(dbData.StateTable['State_name']);
      dbData.StateTable.Next;
    end;
 end;
 Form16.ShowModal;


end;

procedure TForm7.Button4Click(Sender: TObject);
begin
Form13.ShowModal;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm7.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
 NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form7.Color := NightBlue;

      Form7.Panel1.Color:= NightBlue;
      Form7.Body.Color := LightBlue;

      Form7.Panel2.Color:= BtnBlue;
      Form7.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form7.Panel7.Color:= BtnBlue;
      Form7.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));

end;

procedure TForm7.Image1Click(Sender: TObject);
begin

DBComboBoxclass_num.Items.Clear;
DBComboBoxstate_num.Items.Clear;
close;
end;

procedure TForm7.Panel2Click(Sender: TObject);

begin

if (Editstd_num.Text <> '' ) and (Editstd_lastname.Text <> '' )  then
 begin


dbData.StudentTable.Insert;
dbData.StudentTablestd_num.AsString := Editstd_num.Text;
dbData.StudentTablestd_name.AsString :=  Editstd_name.Text;
dbData.StudentTablestd_lastname.AsString := Editstd_lastname.Text;
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

 with dbData.DivisionTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Division where div_name = '+quotedstr(ComboBoxdiv_num.Text);
   Open;

   dbData.DivisionTable.First;

   while not dbData.DivisionTable.Eof do
    begin
    dbData.StudentTablediv_num.AsInteger :=  StrtoInt(dbData.DivisionTable['div_num']) ;

      dbData.DivisionTable.Next;
    end;
 end;

 with dbData.SpecTable do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from Spec where spec_name = '+quotedstr(ComboBoxspec_num.Text);
   Open;

   dbData.SpecTable.First;

   while not dbData.SpecTable.Eof do
    begin
    dbData.StudentTablespec_num.AsInteger :=  StrtoInt(dbData.SpecTable['spec_num']) ;

      dbData.SpecTable.Next;
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
    dbData.StudentTablestate_num.AsInteger :=  StrtoInt(dbData.StateTable['state_num']) ;

      dbData.StateTable.Next;
    end;
 end;



dbData.StudentTable.Post;


 end
 else
 begin
   ShowMessage('Â‰«ﬂ Œ«‰… ›«—€…');
 end;

end;

procedure TForm7.Panel7Click(Sender: TObject);
begin
DBComboBoxclass_num.Items.Clear;
DBComboBoxstate_num.Items.Clear;
dbData.StudentTable.Cancel;
close;
end;




end.
