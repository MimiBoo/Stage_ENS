object Form2: TForm2
  Left = 274
  Top = 231
  BiDiMode = bdRightToLeft
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 674
  ClientWidth = 1219
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Body: TPanel
    Left = 0
    Top = 42
    Width = 1219
    Height = 632
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 38
    DesignSize = (
      1219
      632)
    object Label1: TLabel
      Left = 1074
      Top = 32
      Width = 123
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1585#1602#1605' '#1575#1604#1578#1587#1580#1610#1604':'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Baloo Bhaijaan'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 1164
    end
    object Label2: TLabel
      Left = 1077
      Top = 175
      Width = 120
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1575#1604#1575#1605#1578#1581#1575#1606' '#1575#1604#1571#1608#1604':'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 1379
    end
    object Label3: TLabel
      Left = 1075
      Top = 231
      Width = 122
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1575#1604#1575#1605#1578#1581#1575#1606' '#1575#1604#1579#1575#1606#1610':'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 1377
    end
    object Label4: TLabel
      Left = 1076
      Top = 287
      Width = 121
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1575#1604#1571#1593#1605#1575#1604' '#1605#1608#1580#1607#1577':'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 1378
    end
    object Label5: TLabel
      Left = 1056
      Top = 343
      Width = 141
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1575#1604#1571#1593#1605#1575#1604' '#1575#1604#1578#1591#1576#1610#1602#1610#1577':'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 1358
    end
    object Edit2: TEdit
      Left = 846
      Top = 174
      Width = 200
      Height = 30
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Dubai'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 846
      Top = 226
      Width = 200
      Height = 30
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Dubai'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 846
      Top = 282
      Width = 200
      Height = 30
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Dubai'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 846
      Top = 338
      Width = 200
      Height = 30
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Dubai'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBComboBox1: TDBComboBox
      Left = 952
      Top = 80
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      DataSource = DataSource1
      Items.Strings = (
        'hello'
        'idk'
        'test')
      Sorted = True
      TabOrder = 4
      OnDropDown = DBComboBox1Click
    end
    object DBGrid1: TDBGrid
      Left = 248
      Top = 287
      Width = 369
      Height = 120
      DataSource = DataSource1
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 608
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 6
      OnClick = DBComboBox1Click
    end
  end
  object Panel1: TPanel
    Left = 1094
    Top = 0
    Width = 125
    Height = 42
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object Image1: TImage
      Left = 93
      Top = 8
      Width = 24
      Height = 24
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180803000000D7A9CDCA0000000373424954080808DBE14FE0000000097048
        5973000000AB000000AB01D44D92AB0000001974455874536F66747761726500
        7777772E696E6B73636170652E6F72679BEE3C1A0000005A504C5445FFFFFFCC
        6666DC515DDF5060E04E5FE04F5EE14E5EDF5060DF4F5FE04E5EE04F5FE04F5F
        E04F5FE05060E15665E25968E87E8AEC939CED99A2F0AAB2F0ABB2F0ABB3F1B2
        B9F4BEC4F4C0C5F5C8CDF9DBDEFDF5F6FEFCFCFFFFFF30DD796E0000000C7452
        4E53000516304B6A7F80B2D0E6FAF55ABB46000000B64944415478DA75525916
        C3200804B798D4DEFFA03589D5288D4BD757E6431E8C820C2074880A28153D80
        FD340AC70D4A895E843412DEC8310F421B844F504C8D90F63B7E32219F045A09
        BFC88110265D332E25D49A68C5566D8C28E69A485E710FA7B533DD6A69DA51D9
        F6D85CC027D00ED6D8FC80C6F4B4CB441E1CDEB7EE46B46A74EA54017178EAEE
        818B788AE224643F0481C2136C2AB638FB5DB6C121C925C52689D1EB90841791
        959D1F143F5A7E19FEADCF03D2AC6C556DB738F40000000049454E44AE426082}
      OnClick = Button1Click
    end
    object Image2: TImage
      Left = 57
      Top = 8
      Width = 24
      Height = 24
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180803000000D7A9CDCA0000000373424954080808DBE14FE0000000097048
        5973000000B3000000B301B9D38A040000001974455874536F66747761726500
        7777772E696E6B73636170652E6F72679BEE3C1A00000135504C5445FFFFFFFF
        CC00FFC500FFC500FFC200FFC300FFC300FFC100FFC100FFC200FFC200FFC200
        3D40403E41403F413F43443E44453E45463D46463D48483C49483C4A493C4E4B
        3A4E4C3A5550385751375852375A53365B54365C55365E5635655B33675C3268
        5D32695E316B5F316C60306E61306F622F71632F72642E74652E75652E75662D
        78672D79682C7C6A2B7D6B2B7E6B2B826E29846F298872278B74268D76268F77
        25957B23967C239B7F219C80219E8120A2841FA3841EA6861DA9881CAC8A1BB0
        8D1AB49019B69118BB9516CB9F11CFA210D1A30FD4A50ED5A60ED7A70DD8A80D
        D9A90DDAA90CDDAB0BDEAC0BDFAD0BE7B208EAB407EDB606EEB606EEB706EFB7
        05F1B805F2B904F4BA04F4BB04F5BB03F6BC03F7BC03F7BD03FABE02FABF02FB
        BF01FCC001FDC001FDC101FEC100FFC200BEFCEC1A0000000C74524E53000516
        304B6A7F80B2D0E6FAF55ABB460000017F4944415478DA75924B4B02511886DF
        33338D17D20A5B648678370BD32E8B72D1857E8659D10F0BC95C04512DBA402D
        225AA8B893A0CBCE4D56A893163ACD38DA9919BB41BE8B03E77B0EDFE5FD0E81
        2E4615DAAAF400D14F9E8B775FA465B9F30D583E811FA524A50BFAF8387E2B2D
        C91A608D34DE6AB54C2C6489E5194A448502624CE0BA2C76301951CE0530A609
        3F526287C0B001EC29B00C78C67057AA7E20380B2425C298E2681C01A3F3469A
        BE9897E08AD1644DC26D01B5132B5755098D071E1C4BF4C536E13701E1CCE7CB
        09238BA5AC1CF11CDA57284812E33AD02E0CBA2AB9D7D5E79B7018F79C97821D
        625EEB76DF283B45C1FE35CBAE0E687378AA7A6B2F4EAB7EA1404DD5B80CFA1E
        B3E29250B0C52C5743535A2AB5F8EBA9C39F6B86A6EB998A6DE66274592BAEB6
        5B3F36779AA128C15BA6DCFFDE6D571D50DA07BC732CBD97B375B817B401354B
        0E44808B06946C91C2F119CD12CDC4DB9AA8B4BD1EE46B0C6F1876EB26EAB6FF
        5D88667BEF45F55E6DEFCFF0DFF7F904E7059B556DE977470000000049454E44
        AE426082}
      OnClick = Button2Click
    end
    object Image3: TImage
      Left = 19
      Top = 8
      Width = 24
      Height = 24
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180803000000D7A9CDCA0000000467414D410000B18F0BFC61050000008A50
        4C544500000011C49915C79814C69814C69914C69814C69814C69713C69712CA
        9512C89B14C69814C69814C69917C99B15C79A14C69814C69813C69914C69815
        C69814C69814C79814C69814C59714C79815C59914C79814C69814C69813C698
        13C59814C69814C69814C59814C69813C59814C69913C69716C69714C69713C5
        9818C79713C69914C6980000001EBE85690000002C74524E53001E6DB7DBF4DA
        B66C1D1C99FBA22149F0F250FD48FC4DF19B9A6EB5DCF3AB77D7D8D9B46A981B
        474C4F206BFDEB013100000001624B47440088051D4800000009704859730000
        0EC400000EC401952B0E1B0000000774494D4507E4010709380360F134F30000
        00C94944415478DA6D926D0BC15014C7CFDF14DB681E3636B6F2823C7CFFCF82
        6669855684D00C45AE598C9DDF8B73EAFC6EB77BEE39A0377811C72829C45101
        3AC9091F387E84069BBEACB04B44AE6A519A60FF88858E26FD12486B21E4629B
        FED99CCE2053A72CDB00503B8CF043B46AC4E1411AB2620FBBC20A178E26D211
        A91A4A221C189153E3F6F303F6AA330A3D564428765971812CB10DDE41569D11
        D71948291B99FAB2E18A77F677996F37A6FCA0C20B3F5A7342EC323863FA0891
        475E7B41F6AD324FD6E70972D930E31492FD350000002574455874646174653A
        63726561746500323032302D30312D30375430393A35363A30332B30303A3030
        ECB3D2AF0000002574455874646174653A6D6F6469667900323032302D30312D
        30375430393A35363A30332B30303A30309DEE6A130000001974455874536F66
        7477617265007777772E696E6B73636170652E6F72679BEE3C1A000000004945
        4E44AE426082}
      OnClick = Button3Click
    end
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'class_num'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Stage_ENS.dbo.Class'
    TableName = 'Stage_ENS.dbo.Class'
    Left = 208
    Top = 18
    object FDTable1class_num: TFDAutoIncField
      FieldName = 'class_num'
      Origin = 'class_num'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1class_name: TStringField
      FieldName = 'class_name'
      Origin = 'class_name'
      Required = True
      Size = 25
    end
    object FDTable1div_num: TIntegerField
      FieldName = 'div_num'
      Origin = 'div_num'
      Required = True
    end
    object FDTable1spec_num: TIntegerField
      FieldName = 'spec_num'
      Origin = 'spec_num'
      Required = True
    end
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 64
    Top = 10
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=StageENS')
    Connected = True
    Left = 136
    Top = 18
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 344
    Top = 138
  end
end