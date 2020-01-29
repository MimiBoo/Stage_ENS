unit AddAdmin;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;
      procedure TForm4.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm4.Button1Click(Sender: TObject);
begin

if (Edit1.Text ='') and (Edit2.Text ='') and (Edit3.Text ='') then
 begin
   ShowMessage('Â‰«ﬂ Œ«‰… ›«—€…');
 end
 else if Edit3.Text = Edit2.Text then

  begin
  dbData.AdminTable.Append;
  dbData.AdminTableUser_Name.AsString := Edit1.Text;
  dbData.AdminTablePassword.AsString := Edit2.Text;
  dbData.AdminTable.Post;
  end
  else
  begin
       ShowMessage('ﬂ·„… «·„—Ê— €Ì— „ ‘«»Â…');
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
