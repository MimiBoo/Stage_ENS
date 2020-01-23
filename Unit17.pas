unit Unit17;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ComCtrls;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Body: TPanel;
    GridPanel1: TGridPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    DBText1: TDBText;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel12: TPanel;
    Image5: TImage;
    Image6: TImage;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DBComboBoxdiv_num: TComboBox;
    DBComboBoxclass_num: TComboBox;
    DBComboBoxspec_num: TComboBox;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel15: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel16: TPanel;
    Image4: TImage;
    Image7: TImage;
    Panel17: TPanel;
    GridPanel2: TGridPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    DBText2: TDBText;
    Panel22: TPanel;
    DBGrid4: TDBGrid;
    DBGrid3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Panel9Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
        procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form17: TForm17;
  NightBlue,LightBlue,BtnBlue: TColor;

implementation

{$R *.dfm}

uses Login, Data, Ratrapage;

procedure TForm17.Image1Click(Sender: TObject);
begin
close
end;

procedure TForm17.Image2Click(Sender: TObject);
begin
 if Form17.WindowState = wsNormal then
   begin
        Form17.WindowState:=wsMaximized;
        with Screen.WorkAreaRect do
            Form17.SetBounds(Left, Top, Right - Left, Bottom - Top);
   end
       else
       begin
         Form17.WindowState:=wsNormal;
       end;
end;

procedure TForm17.Image4Click(Sender: TObject);
begin
dbData.StudentviewView.Prior;
dbData.RatrapageviewView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable2.Edit;
dbData.FDMemTable2SumAll.AsFloat := 0;


dbData.RatrapageviewView.DisableControls;
dbData.RatrapageviewView.First;
dbData.FDMemTable2.Refresh;
While not(dbData.RatrapageviewView.EOF) do
    begin

      dbData.FDMemTable2.Edit;

      dbData.FDMemTable2.FieldByName('SumAll').AsFloat := dbData.FDMemTable2.FieldByName('SumAll').AsFloat
                                            + dbData.RatrapageviewView.FieldByName('Sum').AsFloat;
      dbData.RatrapageviewView.Next;
    end;

    dbData.RatrapageviewView.EnableControls;



dbData.RatrapageviewView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable2.Edit;
end;

procedure TForm17.Image5Click(Sender: TObject);
begin
dbData.StudentviewView.Prior;
dbData.PonintviewsView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable1.Edit;
dbData.FDMemTable1SumAll.AsFloat := 0;


dbData.PonintviewsView.DisableControls;
dbData.PonintviewsView.First;
dbData.FDMemTable1.Refresh;
While not(dbData.PonintviewsView.EOF) do
    begin

      dbData.FDMemTable1.Edit;

      dbData.FDMemTable1.FieldByName('SumAll').AsFloat := dbData.FDMemTable1.FieldByName('SumAll').AsFloat
                                            + dbData.PonintviewsView.FieldByName('Sum').AsFloat;
      dbData.PonintviewsView.Next;
    end;

    dbData.PonintviewsView.EnableControls;



dbData.PonintviewsView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable1.Edit;
end;

procedure TForm17.Image6Click(Sender: TObject);
begin
dbData.StudentviewView.Next;
dbData.PonintviewsView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable1.Edit;
dbData.FDMemTable1SumAll.AsFloat := 0;


dbData.PonintviewsView.DisableControls;
dbData.PonintviewsView.First;
dbData.FDMemTable1.Refresh;
While not(dbData.PonintviewsView.EOF) do
    begin

      dbData.FDMemTable1.Edit;

      dbData.FDMemTable1.FieldByName('SumAll').AsFloat := dbData.FDMemTable1.FieldByName('SumAll').AsFloat
                                            + dbData.PonintviewsView.FieldByName('Sum').AsFloat;
      dbData.PonintviewsView.Next;
    end;

    dbData.PonintviewsView.EnableControls;



dbData.PonintviewsView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable1.Edit;
end;

procedure TForm17.Image7Click(Sender: TObject);
begin
dbData.StudentviewView.Next;
dbData.RatrapageviewView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable2.Edit;
dbData.FDMemTable2SumAll.AsFloat := 0;


dbData.RatrapageviewView.DisableControls;
dbData.RatrapageviewView.First;
dbData.FDMemTable2.Refresh;
While not(dbData.RatrapageviewView.EOF) do
    begin

      dbData.FDMemTable2.Edit;

      dbData.FDMemTable2.FieldByName('SumAll').AsFloat := dbData.FDMemTable2.FieldByName('SumAll').AsFloat
                                            + dbData.RatrapageviewView.FieldByName('Sum').AsFloat;
      dbData.RatrapageviewView.Next;
    end;

    dbData.RatrapageviewView.EnableControls;



dbData.RatrapageviewView.Edit;
dbData.StudentviewView.Edit;
dbData.FDMemTable2.Edit;
end;

procedure TForm17.Panel8Click(Sender: TObject);
begin
Form16.ShowModal;
//dbData.PonintviewsView.Edit;
//dbData.StudentviewView.Edit;
//dbData.FDMemTable1.Edit;
//dbData.FDMemTable1SumAll.AsFloat := 0;
//
//
//dbData.PonintviewsView.DisableControls;
//dbData.PonintviewsView.First;
//dbData.FDMemTable1.Refresh;
//While not(dbData.PonintviewsView.EOF) do
//    begin
//
//      dbData.FDMemTable1.Edit;
//
//      dbData.FDMemTable1.FieldByName('SumAll').AsFloat := dbData.FDMemTable1.FieldByName('SumAll').AsFloat
//                                            + dbData.PonintviewsView.FieldByName('Sum').AsFloat;
//      dbData.PonintviewsView.Next;
//    end;
//
//    dbData.PonintviewsView.EnableControls;
//
//
//
//dbData.PonintviewsView.Edit;
//dbData.StudentviewView.Edit;
//dbData.FDMemTable1.Edit;

end;

procedure TForm17.Panel9Click(Sender: TObject);
begin

try
dbData.StudentviewView.SQL.Clear;
dbData.StudentviewView.SQL.Add('SELECT * from Studentview  where class_name = '+QuotedStr(DBComboBoxclass_num.Text)+' and div_name ='+QuotedStr(DBComboBoxdiv_num.Text)+'and spec_name = '+QuotedStr(DBComboBoxspec_num.Text));
dbData.StudentviewView.Open
finally

end;

end;

procedure TForm17.WMNCHitTest(var Msg: TWMNCHitTest);
  begin
    inherited;
    if Msg.Result = htClient then Msg.Result := htCaption;
  end;
procedure TForm17.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

Form17.DBGrid1.Canvas.Create.Font.Color := clWhite;
end;

procedure TForm17.FormCreate(Sender: TObject);
var   aShape: TShape;
begin
   NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form17.Color := NightBlue;

      Form17.Panel1.Color:= NightBlue;
      Form17.Body.Color := LightBlue;
//      Form17.Panel2.Color:= BtnBlue;
//      Form17.Panel2.Font.Color:=  TColor(RGB(255, 255, 255));
end;

end.
