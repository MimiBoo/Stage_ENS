object dbData: TdbData
  OldCreateOrder = False
  Height = 494
  Width = 825
  object DataSourceSpec: TDataSource
    DataSet = SpecTable
    Left = 272
    Top = 240
  end
  object Stage_ensConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Stage_ENS')
    Connected = True
    LoginPrompt = False
    Left = 436
    Top = 250
  end
  object DataSourceAdmen: TDataSource
    DataSet = AdmenTable
    Left = 96
    Top = 128
  end
  object AdmenTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Admen')
    Left = 101
    Top = 68
    object AdmenTableUser_Name: TStringField
      FieldName = 'User_Name'
      Required = True
      Size = 30
    end
    object AdmenTablePassword: TStringField
      FieldName = 'Password'
      Required = True
    end
  end
  object DataSourceTeacher: TDataSource
    DataSet = TeacherTable
    Left = 408
    Top = 384
  end
  object DataSourceApsent: TDataSource
    DataSet = ApsentTable
    Left = 504
    Top = 368
  end
  object DataSourcePoint: TDataSource
    DataSet = PointTable
    Left = 576
    Top = 288
  end
  object DataSourceDiv: TDataSource
    DataSet = DivisionTable
    Left = 584
    Top = 224
  end
  object DataSourceClass: TDataSource
    DataSet = ClassTable
    Left = 552
    Top = 136
  end
  object DataSourceSubject: TDataSource
    DataSet = SubjectTable
    Left = 344
    Top = 136
  end
  object DataSourceState: TDataSource
    DataSet = StateTable
    Left = 416
    Top = 88
  end
  object DataSourceStudent: TDataSource
    DataSet = StudentTable
    Left = 288
    Top = 312
  end
  object TeacherTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Teacher')
    Left = 407
    Top = 336
    object TeacherTableteach_num: TFDAutoIncField
      FieldName = 'teach_num'
      Origin = 'teach_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TeacherTableteach_name: TStringField
      FieldName = 'teach_name'
      Origin = 'teach_name'
      Required = True
      Size = 25
    end
    object TeacherTableteach_lastname: TStringField
      FieldName = 'teach_lastname'
      Origin = 'teach_lastname'
      Required = True
      Size = 25
    end
    object TeacherTableteach_level: TStringField
      FieldName = 'teach_level'
      Origin = 'teach_level'
      Required = True
      Size = 30
    end
    object TeacherTableteach_head: TStringField
      FieldName = 'teach_head'
      Origin = 'teach_head'
      Required = True
      Size = 30
    end
  end
  object SubjectTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Subject')
    Left = 349
    Top = 194
    object SubjectTablesubj_num: TFDAutoIncField
      FieldName = 'subj_num'
      Origin = 'subj_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SubjectTablesubj_name: TStringField
      FieldName = 'subj _name'
      Origin = '[subj _name]'
      Required = True
      Size = 25
    end
  end
  object StudentTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Student')
    Left = 338
    Top = 307
    object StudentTablestd_num: TStringField
      FieldName = 'std_num'
      Origin = 'std_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 16
    end
    object StudentTablestd_name: TStringField
      FieldName = 'std_name'
      Origin = 'std_name'
      Required = True
      Size = 25
    end
    object StudentTablestd_lastname: TStringField
      FieldName = 'std_lastname'
      Origin = 'std_lastname'
      Required = True
      Size = 25
    end
    object StudentTablebDate: TDateField
      FieldName = 'bDate'
      Origin = 'bDate'
      Required = True
    end
    object StudentTablebDate_place: TStringField
      FieldName = 'bDate_place'
      Origin = 'bDate_place'
      Required = True
      Size = 25
    end
    object StudentTableclass_num: TIntegerField
      FieldName = 'class_num'
      Origin = 'class_num'
      Required = True
    end
    object StudentTablestate_num: TIntegerField
      FieldName = 'state_num'
      Origin = 'state_num'
      Required = True
    end
  end
  object StateTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.State')
    Left = 429
    Top = 155
    object StateTablestate_num: TFDAutoIncField
      FieldName = 'state_num'
      Origin = 'state_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StateTablestate_name: TStringField
      FieldName = 'state_name'
      Origin = 'state_name'
      Required = True
      Size = 25
    end
  end
  object SpecTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Spec')
    Left = 311
    Top = 240
    object SpecTablespec_num: TFDAutoIncField
      FieldName = 'spec_num'
      Origin = 'spec_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SpecTablespec_name: TStringField
      FieldName = 'spec_name'
      Origin = 'spec_name'
      Required = True
      Size = 25
    end
  end
  object DivisionTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Division')
    Left = 530
    Top = 225
    object DivisionTablediv_num: TFDAutoIncField
      FieldName = 'div_num'
      Origin = 'div_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object DivisionTablediv_name: TStringField
      FieldName = 'div_name'
      Origin = 'div_name'
      Required = True
      Size = 50
    end
  end
  object ClassTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Class')
    Left = 491
    Top = 157
    object ClassTableclass_num: TFDAutoIncField
      FieldName = 'class_num'
      Origin = 'class_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClassTableclass_name: TStringField
      FieldName = 'class_name'
      Origin = 'class_name'
      Required = True
      Size = 25
    end
    object ClassTablediv_num: TIntegerField
      FieldName = 'div_num'
      Origin = 'div_num'
      Required = True
    end
    object ClassTablespec_num: TIntegerField
      FieldName = 'spec_num'
      Origin = 'spec_num'
      Required = True
    end
  end
  object ApsentTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Apsent')
    Left = 478
    Top = 325
    object ApsentTableapsent_num: TFDAutoIncField
      FieldName = 'apsent_num'
      Origin = 'apsent_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ApsentTableapsent_date: TDateField
      FieldName = 'apsent_date'
      Origin = 'apsent_date'
      Required = True
    end
    object ApsentTableapsent_time: TTimeField
      FieldName = 'apsent_time'
      Origin = 'apsent_time'
      Required = True
    end
    object ApsentTablestd_num: TIntegerField
      FieldName = 'std_num'
      Origin = 'std_num'
      Required = True
    end
  end
  object PointTable: TFDQuery
    Active = True
    Connection = Stage_ensConnection
    SQL.Strings = (
      'SELECT * FROM Stage_ENS.dbo.Point')
    Left = 523
    Top = 287
    object PointTablepoint_num: TFDAutoIncField
      FieldName = 'point_num'
      Origin = 'point_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PointTableexam1: TIntegerField
      FieldName = 'exam1'
      Origin = 'exam1'
      Required = True
    end
    object PointTableexam2: TIntegerField
      FieldName = 'exam2'
      Origin = 'exam2'
      Required = True
    end
    object PointTabletp: TIntegerField
      FieldName = 'tp'
      Origin = 'tp'
      Required = True
    end
    object PointTabletd: TIntegerField
      FieldName = 'td'
      Origin = 'td'
      Required = True
    end
    object PointTableratrapage: TBooleanField
      FieldName = 'ratrapage'
      Origin = 'ratrapage'
      Required = True
    end
    object PointTablestd_num: TStringField
      FieldName = 'std_num'
      Origin = 'std_num'
      Required = True
      Size = 16
    end
    object PointTablesubj_num: TIntegerField
      FieldName = 'subj_num'
      Origin = 'subj_num'
      Required = True
    end
    object PointTableteach_num: TIntegerField
      FieldName = 'teach_num'
      Origin = 'teach_num'
      Required = True
    end
  end
end
