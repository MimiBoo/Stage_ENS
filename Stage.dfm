object Form6: TForm6
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsNone
  Caption = 'Form6'
  ClientHeight = 587
  ClientWidth = 1292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'B amir'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
<<<<<<< HEAD
  TextHeight = 14
  object Body: TPanel
    Left = 0
    Top = 38
    Width = 1292
    Height = 549
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    BiDiMode = bdRightToLeft
    Color = clActiveCaption
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 835
    ExplicitHeight = 503
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1292
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'B amir'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 6
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 1153
        Top = 3
        Width = 136
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        Caption = #1573#1592#1575#1601#1577' '#1591#1575#1604#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B amir'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel7Click
        ExplicitLeft = 1176
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 1011
        Top = 3
        Width = 136
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        Caption = #1578#1593#1583#1610#1604' '#1605#1593#1604#1608#1605#1575#1578' '#1591#1575#1604#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B amir'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = Panel3Click
        ExplicitLeft = 1176
      end
      object SearchBox1: TSearchBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 229
        Height = 35
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'B amir'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TextHint = #1576#1581#1579' '#1593#1606' '#1575#1604#1591#1575#1604#1576
        Visible = False
        OnChange = SearchBox1Change
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 26
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 82
      Width = 1292
      Height = 467
      Align = alClient
      DataSource = Form17.DataSource1
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'B amir'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 18
      TitleFont.Name = 'B amir'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'std_num'
          Title.Caption = #1585#1602#1605' '#1575#1604#1591#1575#1604#1576
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'std_name'
          Title.Caption = #1575#1604#1575#1587#1605
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'std_lastname'
          Title.Caption = #1575#1604#1604#1602#1576
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1605#1610#1604#1575#1583
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'state_name'
          Title.Caption = #1605#1603#1575#1606' '#1575#1604#1605#1610#1604#1575#1583
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'class_name'
          Title.Caption = #1575#1604#1602#1587#1605
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'div_name'
          Title.Caption = #1575#1604#1601#1585#1593
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'spec_name'
          Title.Caption = #1575#1604#1578#1582#1589#1589
          Width = 157
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 41
      Width = 1292
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'B amir'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 1315
      object Panel6: TPanel
        Left = 521
        Top = 0
        Width = 771
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 512
          Top = 3
          Width = 59
          Height = 35
          Align = alRight
          Caption = '   '#1575#1604#1601#1585#1593'  :  '
          ExplicitLeft = 523
          ExplicitHeight = 18
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 728
          Top = 3
          Width = 40
          Height = 35
          Align = alRight
          Caption = #1575#1604#1602#1587#1605' :  '
          ExplicitHeight = 18
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 273
          Top = 3
          Width = 78
          Height = 35
          Align = alRight
          Caption = '   '#1575#1604#1578#1582#1589#1589' :  '
          ExplicitHeight = 18
        end
        object DBComboBoxdiv_num: TComboBox
          AlignWithMargins = True
          Left = 357
          Top = 3
          Width = 149
          Height = 26
          Align = alRight
          Color = clGrayText
          TabOrder = 0
        end
        object DBComboBoxclass_num: TComboBox
          AlignWithMargins = True
          Left = 577
          Top = 3
          Width = 145
          Height = 26
          Align = alRight
          Color = clGrayText
          TabOrder = 1
        end
        object DBComboBoxspec_num: TComboBox
          AlignWithMargins = True
          Left = 121
          Top = 3
          Width = 146
          Height = 26
          Align = alRight
          Color = clGrayText
          TabOrder = 2
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 48
          Top = 3
          Width = 67
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          Caption = #1576#1581#1579
          Ctl3D = True
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'B amir'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnClick = Panel16Click
        end
      end
    end
  end
=======
  TextHeight = 15
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
  object Panel1: TPanel
    Left = 1167
    Top = 0
    Width = 125
    Height = 38
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 247
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
      OnClick = Image1Click
    end
    object Image2: TImage
      Left = 63
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
      OnClick = Image2Click
    end
    object Image3: TImage
      Left = 33
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
<<<<<<< HEAD
      OnClick = Image3Click
=======
    end
  end
  object Body: TPanel
    Left = 0
    Top = 38
    Width = 835
    Height = 493
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 720
      Top = 6
      Width = 107
      Height = 35
      BevelOuter = bvNone
      Caption = #1573#1590#1575#1601#1577' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 607
      Top = 6
      Width = 107
      Height = 35
      BevelOuter = bvNone
      Caption = #1575#1604#1578#1593#1583#1610#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel3Click
    end
    object SearchBox1: TSearchBox
      Left = 47
      Top = 32
      Width = 193
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'B amir'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = #1576#1581#1579' '#1593#1606' '#1591#1575#1604#1576
      OnChange = SearchBox1Change
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 64
      Width = 835
      Height = 429
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'B amir'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 2
        Top = 18
        Width = 831
        Height = 409
        Align = alClient
        DataSource = dbData.DataSourceStudent
        DragCursor = crArrow
        PanelBorder = gbNone
        PanelHeight = 29
        PanelWidth = 814
        ParentShowHint = False
        TabOrder = 0
        RowCount = 14
        ShowHint = False
        object Panel5: TPanel
          Left = 696
          Top = 0
          Width = 118
          Height = 29
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object DBText1: TDBText
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 112
            Height = 23
            Align = alClient
            Alignment = taCenter
            DataField = 'std_num'
            DataSource = dbData.DataSourceStudent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = 18
            Font.Name = 'B amir'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 6
            ExplicitWidth = 87
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 696
          Height = 29
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnClick = Panel6Click
          ExplicitWidth = 718
          object DBText2: TDBText
            AlignWithMargins = True
            Left = 564
            Top = 3
            Width = 129
            Height = 23
            Align = alRight
            DataField = 'std_name'
            DataSource = dbData.DataSourceStudent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = 18
            Font.Name = 'B amir'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 583
          end
          object DBText3: TDBText
            AlignWithMargins = True
            Left = 440
            Top = 3
            Width = 118
            Height = 23
            Align = alRight
            Alignment = taCenter
            DataField = 'std_lastname'
            DataSource = dbData.DataSourceStudent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = 18
            Font.Name = 'B amir'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 464
            ExplicitTop = 4
            ExplicitHeight = 32
          end
          object DBText4: TDBText
            AlignWithMargins = True
            Left = 256
            Top = 3
            Width = 178
            Height = 23
            Align = alRight
            Alignment = taCenter
            DataField = 'bDate_place'
            DataSource = dbData.DataSourceStudent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = 18
            Font.Name = 'B amir'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 280
            ExplicitTop = 4
            ExplicitHeight = 32
          end
          object DBText5: TDBText
            AlignWithMargins = True
            Left = 152
            Top = 3
            Width = 98
            Height = 23
            Align = alRight
            Alignment = taCenter
            DataField = 'bDate'
            DataSource = dbData.DataSourceStudent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = 18
            Font.Name = 'B amir'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 176
            ExplicitTop = 4
            ExplicitHeight = 32
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 494
      Top = 6
      Width = 107
      Height = 35
      BevelOuter = bvNone
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'B amir'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = Panel4Click
>>>>>>> 7db3e5757bc80ee7b60c7413bede79342349d6b0
    end
  end
end
