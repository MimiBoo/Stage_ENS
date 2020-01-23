unit Add_class;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm10 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editclass_name: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
         procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
                 NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data, Add_Spec, Add_Division;

procedure TForm10.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Form13.ShowModal;
end;

procedure TForm10.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
 NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form10.Color := NightBlue;

      Form10.Panel1.Color:= NightBlue;
      Form10.Body.Color := LightBlue;



end;

procedure TForm10.Image1Click(Sender: TObject);
begin
close
end;

procedure TForm10.Panel2Click(Sender: TObject);
begin

if (Editclass_name.Text <> '' )  then
 begin


dbData.ClassTable.Insert;
//dbData.ClassTableclass_num.AsString := Editclass_num.Text;
dbData.ClassTableclass_name.AsString :=  Editclass_name.Text;




dbData.ClassTable.Post;


 end
 else
 begin
   ShowMessage('Â‰«ﬂ Œ«‰… ›«—€…');
 end;

end;

procedure TForm10.Panel7Click(Sender: TObject);
begin


close
end;

end.
