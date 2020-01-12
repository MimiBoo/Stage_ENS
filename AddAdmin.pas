unit AddAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;

procedure TForm4.Button1Click(Sender: TObject);
begin

if (Edit1.Text ='') and (Edit2.Text ='') and (Edit3.Text ='') then
 begin
   ShowMessage('���� ���� �����');
 end
 else if Edit3.Text = Edit2.Text then

  begin
  dbData.AdmenTable.Append;
  dbData.AdmenTableUser_Name.AsString := Edit1.Text;
  dbData.AdmenTablePassword.AsString := Edit2.Text;
  dbData.AdmenTable.Post;
  end
  else
  begin
       ShowMessage('���� ������ ��� �������');
  end;


end;

procedure TForm4.Button2Click(Sender: TObject);
begin
   close;
end;

procedure TForm4.FormCreate(Sender: TObject);
var   aShape: TShape;
begin
   NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form4.Color := NightBlue;

      Form4.Panel1.Color:= NightBlue;
      Form4.Body.Color := LightBlue;
//      Form4.Panel4.Color:= BtnBlue;
//      Form4.Panel4.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form4.Panel3.Color:= BtnBlue;
//      Form4.Panel3.Font.Color:=  TColor(RGB(255, 255, 255));
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
close;
end;

end.