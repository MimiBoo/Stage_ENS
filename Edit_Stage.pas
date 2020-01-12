unit Edit_Stage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    Label8: TLabel;
    Panel7: TPanel;
    Panel2: TPanel;
    Editstd_name: TEdit;
    Editstd_lastname: TEdit;
    EditbDate_place: TEdit;
    bDate: TDateTimePicker;
    DBComboBoxclass_num: TDBComboBox;
    DBComboBoxstate_num: TDBComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DBEdit1: TDBEdit;
    procedure Panel2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
          NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;

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
dbData.StudentTable.Cancel;
close;
end;

procedure TForm8.Panel2Click(Sender: TObject);

    var vali: integer;
begin
  // ����� �������� ���� ������� �� ���� ��� ��� ����� �������
  vali := Messagedlg('���� ��� �� ��',mtConfirmation, [mbYes, mbNo], 0);

if  vali = mrYes  then
begin
dbData.StudentTable.Edit;
//dbData.StudentTablestd_num.AsString := Editstd_num.Text;
dbData.StudentTablestd_name.AsString :=  Editstd_name.Text;
dbData.StudentTablestd_lastname.AsString := Editstd_lastname.Text;
dbData.StudentTablebDate_place.AsString := EditbDate_place.Text;
dbData.StudentTablebDate.AsDateTime := bDate.DateTime;


dbData.StudentTableclass_num.AsInteger := DBComboBoxclass_num.GetCount+1;
dbData.StudentTablestate_num.AsInteger := DBComboBoxstate_num.GetCount+1;

dbData.StudentTable.Post;

end;


end;

procedure TForm8.Panel7Click(Sender: TObject);
begin
  dbData.StudentTable.Cancel;
  close
end;

end.