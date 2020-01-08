unit Unit2;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Stan.Pool, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    Image3: TImage;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    FDTable1: TFDTable;
    FDManager1: TFDManager;
    FDConnection1: TFDConnection;
    FDTable1class_num: TFDAutoIncField;
    FDTable1class_name: TStringField;
    FDTable1div_num: TIntegerField;
    FDTable1spec_num: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);



  private
      procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;



var
  Form2: TForm2;
  NightBlue,LightBlue: TColor;

implementation

{$R *.dfm}
procedure TForm2.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 if Form2.WindowState = wsNormal then
   begin
        Form2.WindowState:=wsMaximized;
        with Screen.WorkAreaRect do
            Form2.SetBounds(Left, Top, Right - Left, Bottom - Top);
   end
       else
       begin
         Form2.WindowState:=wsNormal;
       end;
end;




procedure TForm2.Button3Click(Sender: TObject);
begin
     if Form2.WindowState = wsNormal then
   begin
        Form2.WindowState:=wsMinimized;
   end else
       begin
         Form2.WindowState:=wsMinimized;
       end;

end;





procedure TForm2.DBComboBox1Click(Sender: TObject);
begin
FDTable1.SQL.Clear;
FDTable1.SQl.Text:= 'SELECT * FROM Stage_ENS.dbo.Class WHERE class_num = 4';
FDTable1.Open;
while not FDTable1.eof do
begin
  ShowMessage(FDTable1.);
  FDTable1.Next;
end;
FDTable1.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
    aShape: TShape;
begin
      NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      Form2.Color := NightBlue;
      Form2.Panel1.Color:= NightBlue;
      Form2.Body.Color := LightBlue;

end;




{
procedure TForm2.FormShow(Sender: TObject);
var i: Integer;
    TC: TCustomEdit;
    aShape: TShape;


begin
  for i:=0 to ComponentCount-1 do begin
      if (Components[i] is TCustomEdit) and
         not (Components[i] is TMemo) then begin
        TC := Components[i] as TCustomEdit;
        aShape := TShape.Create(Self);
        aShape.Parent := TC.Parent;
        aShape.SetBounds(TC.Left,TC.Top,TC.Width,TC.Height+10);
        TC.SetBounds(TC.Left+4,TC.Top+3,TC.Width-10,TC.Height+5);
        TC.Anchors:=[akTop,akRight];
        aShape.Shape:=stRoundRect;
        aShape.Brush.Color:=TC.Brush.Color;
        aShape.Pen.Color:=clWindowFrame;
      end;
  end;
end; }

end.
