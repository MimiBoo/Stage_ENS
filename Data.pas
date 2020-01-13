unit Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdbData = class(TDataModule)
    DataSourceSpec: TDataSource;
    Stage_ensConnection: TFDConnection;
    DataSourceAdmen: TDataSource;
    DataSourceTeacher: TDataSource;
    DataSourceApsent: TDataSource;
    DataSourcePoint: TDataSource;
    DataSourceDiv: TDataSource;
    DataSourceClass: TDataSource;
    DataSourceSubject: TDataSource;
    DataSourceState: TDataSource;
    DataSourceStudent: TDataSource;
    StudentTable: TFDQuery;
    StudentTablestd_num: TStringField;
    StudentTablestd_name: TStringField;
    StudentTablestd_lastname: TStringField;
    StudentTablebDate: TDateField;
    StudentTablebDate_place: TStringField;
    StudentTableclass_num: TIntegerField;
    StudentTablestate_num: TIntegerField;
    StateTable: TFDQuery;
    StateTablestate_num: TFDAutoIncField;
    StateTablestate_name: TStringField;
    SpecTable: TFDQuery;
    SpecTablespec_num: TFDAutoIncField;
    SpecTablespec_name: TStringField;
    DivisionTable: TFDQuery;
    DivisionTablediv_num: TFDAutoIncField;
    DivisionTablediv_name: TStringField;
    ClassTable: TFDQuery;
    PointTable: TFDQuery;
    PointTablepoint_num: TFDAutoIncField;
    PointTableexam1: TIntegerField;
    PointTableexam2: TIntegerField;
    PointTabletp: TIntegerField;
    PointTabletd: TIntegerField;
    PointTableratrapage: TBooleanField;
    PointTablestd_num: TStringField;
    PointTablesubj_num: TIntegerField;
    PointTableteach_num: TIntegerField;
    AdminTable: TFDQuery;
    SubjectTable: TFDQuery;
    TeacherTable: TFDQuery;
    ApsentTable: TFDQuery;
    AdminTableUser_Name: TStringField;
    AdminTablePassword: TStringField;
    ClassTableclass_num: TFDAutoIncField;
    ClassTableclass_name: TStringField;
    ClassTablediv_num: TIntegerField;
    ClassTablespec_num: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbData: TdbData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
