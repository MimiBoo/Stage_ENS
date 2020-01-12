unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    EdieUser_Name: TEdit;
    EdiePassword: TEdit;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data, point, Unit2;

procedure TForm5.FormCreate(Sender: TObject);
var   aShape: TShape;
begin
   NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form5.Color := NightBlue;

      Form5.Panel1.Color:= NightBlue;
      Form5.Body.Color := LightBlue;
      Form5.Panel2.Color:= BtnBlue;
      Form5.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form4.Panel3.Color:= BtnBlue;
//      Form4.Panel3.Font.Color:=  TColor(RGB(255, 255, 255));
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
close;
end;

procedure TForm5.Panel2Click(Sender: TObject);
begin

if (EdieUser_Name.Text = dbData.AdmenTableUser_Name.AsString) and
              (EdiePassword.Text = dbData.AdmenTablePassword.AsString) then
   begin
     Form2.ShowModal;
     Form5.Visible := True

    end

  else
   begin
        ShowMessage('��');
        EdiePassword.Text := '';
        EdieUser_Name.Text := '';

   end;

end;

end.