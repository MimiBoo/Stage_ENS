unit Add_Division;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm13 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editdiv_name: TEdit;
    Panel2: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
   NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;

procedure TForm13.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm13.Button1Click(Sender: TObject);
begin
dbData.DivisionTable.Delete;
end;

procedure TForm13.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
 NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form13.Color := NightBlue;

      Form13.Panel1.Color:= NightBlue;
      Form13.Body.Color := LightBlue;

      Form13.Panel2.Color:= BtnBlue;
      Form13.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form13.Panel7.Color:= BtnBlue;
      Form13.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));


end;

procedure TForm13.Image1Click(Sender: TObject);
begin
close
end;

procedure TForm13.Panel2Click(Sender: TObject);
begin


if (Editdiv_name.Text <> '' ) then
 begin


dbData.DivisionTable.Insert;

dbData.DivisionTablediv_name.AsString :=  Editdiv_name.Text;

dbData.DivisionTable.Post;


 end
 else
 begin
   ShowMessage('���� ���� �����');
 end;


end;

procedure TForm13.Panel7Click(Sender: TObject);
begin
dbData.DivisionTable.Cancel;
close
end;

end.
