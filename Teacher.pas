unit Teacher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

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
    GroupBox1: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Data;

procedure TForm9.Image1Click(Sender: TObject);
begin
close
end;

end.