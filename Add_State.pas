unit Add_State;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm11 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editstate_num: TEdit;
    Panel2: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Panel2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
   NightBlue,LightBlue,BtnBlue: TColor;
implementation

{$R *.dfm}

uses Data;

procedure TForm11.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm11.Button1Click(Sender: TObject);
    var vali: integer;
begin
  // ����� �������� ���� ������� �� ���� ��� ��� ����� �������
  vali := Messagedlg('�� ���� ��� ��� ������ ',mtCustom, [mbYes, mbNo], 0);

if  vali = mrYes  then
begin
dbData.StateTable.Delete;
  ShowMessage('�� �����');
end;


end;

procedure TForm11.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
 NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form11.Color := NightBlue;

      Form11.Panel1.Color:= NightBlue;
      Form11.Body.Color := LightBlue;

      Form11.Panel2.Color:= BtnBlue;
      Form11.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Form11.Panel7.Color:= BtnBlue;
      Form11.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));

end;

procedure TForm11.Image1Click(Sender: TObject);
begin
close
end;

procedure TForm11.Panel2Click(Sender: TObject);
begin


if (Editstate_num.Text <> '' ) then
 begin


dbData.StateTable.Insert;

dbData.StateTablestate_name.AsString :=  Editstate_num.Text;

dbData.StateTable.Post;


 end
 else
 begin
   ShowMessage('���� ���� �����');
 end;

end;

procedure TForm11.Panel7Click(Sender: TObject);
begin
dbData.StateTable.Cancel;
close
end;

end.
