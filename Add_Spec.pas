unit Add_Spec;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm12 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editspec_name: TEdit;
    Panel2: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
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
  Form12: TForm12;

   NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;

procedure TForm12.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm12.FormCreate(Sender: TObject);

var
    aShape: TShape;
begin
 NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form12.Color := NightBlue;

      Form12.Panel1.Color:= NightBlue;
      Form12.Body.Color := LightBlue;

      Form12.Panel2.Color:= BtnBlue;
      Form12.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form12.Panel7.Color:= BtnBlue;
      Form12.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));


end;

procedure TForm12.Image1Click(Sender: TObject);
begin
 close
end;

procedure TForm12.Panel2Click(Sender: TObject);
begin


if (Editspec_name.Text <> '' ) then
 begin


dbData.SpecTable.Insert;

dbData.SpecTablespec_name.AsString :=  Editspec_name.Text;

dbData.SpecTable.Post;


 end
 else
 begin
   ShowMessage('���� ���� �����');
 end;

end;

procedure TForm12.Panel7Click(Sender: TObject);
begin
close
end;

end.
