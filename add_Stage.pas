unit add_Stage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm7 = class(TForm)
    Body: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Editstd_name: TEdit;
    Editstd_lastname: TEdit;
    EditbDate_place: TEdit;
    bDate: TDateTimePicker;
    DBComboBoxclass_num: TDBComboBox;
    DBComboBoxstate_num: TDBComboBox;
    Label8: TLabel;
    Editstd_num: TEdit;
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Data;

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
dbData.StudentTable.Cancel;
close;
end;

procedure TForm7.Panel2Click(Sender: TObject);

begin

if (Editstd_num.Text <> '' ) and (Editstd_lastname.Text <> '' ) and
    (EditbDate_place.Text <> '' ) and (EditbDate_place.Text <> '' ) then
 begin


dbData.StudentTable.Insert;
dbData.StudentTablestd_num.AsString := Editstd_num.Text;
dbData.StudentTablestd_name.AsString :=  Editstd_name.Text;
dbData.StudentTablestd_lastname.AsString := Editstd_lastname.Text;
dbData.StudentTablebDate_place.AsString := EditbDate_place.Text;
dbData.StudentTablebDate.AsDateTime := bDate.DateTime;


dbData.StudentTableclass_num.AsInteger := DBComboBoxclass_num.GetCount+1;
dbData.StudentTablestate_num.AsInteger := DBComboBoxstate_num.GetCount+1;

dbData.StudentTable.Post;


 end
 else
 begin
   ShowMessage('Â‰«ﬂ Œ«‰… ›«—€…');
 end;

end;

procedure TForm7.Panel7Click(Sender: TObject);
begin
dbData.StudentTable.Cancel;
close;
end;

end.
