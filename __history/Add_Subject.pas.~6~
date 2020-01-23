unit Add_Subject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm15 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Editsubj_name: TEdit;
    EditMultiplier: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DBEdit1: TDBEdit;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses Data;

procedure TForm15.Button1Click(Sender: TObject);
begin

dbData.SubjectTable.Insert;
dbData.SubjectTablesubj_name.AsString := Editsubj_name.Text;
dbData.SubjectTableMultiplier.AsString :=  EditMultiplier.Text;
dbData.SubjectTable.Post;
dbData.SubjectTable.Refresh;
end;

procedure TForm15.Image1Click(Sender: TObject);
begin
close
end;

end.
