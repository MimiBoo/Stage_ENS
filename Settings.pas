unit Settings;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.DBCGrids, Vcl.DBCtrls, Data.Win.ADODB;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel7: TPanel;
    ADOCommand1: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
    NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Data, AddAdmin;
 procedure TForm3.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm3.FormCreate(Sender: TObject);
var   aShape: TShape;
begin
      NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form3.Color := NightBlue;

      Form3.Panel1.Color:= NightBlue;
      Form3.Body.Color := LightBlue;
      Form3.Panel4.Color:= BtnBlue;
      Form3.Panel4.Font.Color:=  TColor(RGB(255, 255, 255));
      Form3.Panel3.Color:= BtnBlue;
      Form3.Panel3.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form3.Panel2.Color:= BtnBlue;
//      Form3.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form3.Panel5.Color:= BtnBlue;
//      Form3.Panel5.Font.Color:=  TColor(RGB(255, 255, 255));
//      Form3.Panel6.Color:= BtnBlue;
//      Form3.Panel6.Font.Color:=  TColor(RGB(255, 255, 255));
      Form3.Panel7.Color:= BtnBlue;
      Form3.Panel7.Font.Color:=  TColor(RGB(255, 255, 255));


end;

procedure TForm3.Image1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm3.Panel3Click(Sender: TObject);
begin
ADOCommand1.CommandText := 'BACKUP DATABASE Stage_ENS TO  DISK = '+QuotedStr('E:\Stage_ENS.bak') ;
ADOCommand1.Execute ;
end;

procedure TForm3.Panel4Click(Sender: TObject);
begin
ADOCommand1.CommandText := 'USE master  ALTER DATABASE Stage_ENS SET SINGLE_USER WITH ROLLBACK IMMEDIATE  '+
                               'RESTORE DATABASE Stage_ENS FROM DISK = '+QuotedStr('E:\Stage_ENS.bak');

ADOCommand1.Execute;
end;

procedure TForm3.Panel5Click(Sender: TObject);
begin
dbData.AdmenTable.Edit;
     //Form4.ShowModal;
end;

procedure TForm3.Panel7Click(Sender: TObject);
begin
 Form4.ShowModal;
end;

end.
