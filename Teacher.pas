unit Teacher;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SearchBox1: TSearchBox;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
  private
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
   NightBlue,LightBlue,BtnBlue: TColor;


implementation

{$R *.dfm}

uses Data;
procedure TForm9.Panel2Click(Sender: TObject);
begin
dbData.TeacherTable.Insert;
end;

procedure TForm9.Panel3Click(Sender: TObject);
begin
dbData.TeacherTable.Edit;
end;

procedure TForm9.Panel4Click(Sender: TObject);
begin
 dbData.TeacherTable.Post;
end;

procedure TForm9.SearchBox1Change(Sender: TObject);
begin

try


dbData.TeacherTable.SQL.Clear;
dbData.TeacherTable.SQL.Add('SELECT * from Teacher  where [teach_name]  like '+QuotedStr(SearchBox1.Text+'%'));
dbData.TeacherTable.Open;


finally

end;
end;

procedure TForm9.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm9.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
      NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form9.Color := NightBlue;

      Form9.Panel1.Color:= NightBlue;
      Form9.Body.Color := LightBlue;

      Panel2.Color:= BtnBlue;
      Panel2.Font.Color:=  TColor(RGB(255, 255, 255));

      Panel3.Color:= BtnBlue;
      Panel3.Font.Color:=  TColor(RGB(255, 255, 255));

      Panel4.Color:= BtnBlue;
      Panel4.Font.Color:=  TColor(RGB(255, 255, 255));

end;

procedure TForm9.Image1Click(Sender: TObject);
begin
close
end;

end.
