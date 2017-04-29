object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Pinout builder'
  ClientHeight = 834
  ClientWidth = 1356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1356
    Height = 834
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 830
    ClientRectLeft = 4
    ClientRectRight = 1352
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1074#1093#1086#1076#1085#1099#1093' '#1092#1072#1081#1083#1086#1074
      ImageIndex = 0
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1348
        Height = 806
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 785
        object scb_InputFile1: TcxShellComboBox
          Left = 240
          Top = 46
          Properties.ViewOptions = [scvoShowFiles, scvoShowZipFilesWithFolders]
          Properties.OnChange = scb_InputFile1PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 398
        end
        object mem_Output1: TcxMemo
          Left = 34
          Top = 103
          ParentFont = False
          Properties.ScrollBars = ssBoth
          Properties.WantReturns = False
          Properties.WordWrap = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Courier New'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 173
          Width = 604
        end
        object cxGrid1: TcxGrid
          Left = 34
          Top = 312
          Width = 604
          Height = 274
          TabOrder = 2
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = ds_tbl_PinsAltFuncs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1LQFP144: TcxGridDBColumn
              DataBinding.FieldName = 'LQFP144'
              Width = 100
            end
            object cxGrid1DBTableView1BGA144: TcxGridDBColumn
              DataBinding.FieldName = 'BGA144'
              Width = 100
            end
            object cxGrid1DBTableView1PinName: TcxGridDBColumn
              DataBinding.FieldName = 'PinName'
              Width = 100
            end
            object cxGrid1DBTableView1Default: TcxGridDBColumn
              DataBinding.FieldName = 'Default'
              Width = 100
            end
            object cxGrid1DBTableView1ALT0: TcxGridDBColumn
              DataBinding.FieldName = 'ALT0'
              Width = 100
            end
            object cxGrid1DBTableView1ALT1: TcxGridDBColumn
              DataBinding.FieldName = 'ALT1'
              Width = 100
            end
            object cxGrid1DBTableView1ALT2: TcxGridDBColumn
              DataBinding.FieldName = 'ALT2'
              Width = 100
            end
            object cxGrid1DBTableView1ALT3: TcxGridDBColumn
              DataBinding.FieldName = 'ALT3'
              Width = 100
            end
            object cxGrid1DBTableView1ALT4: TcxGridDBColumn
              DataBinding.FieldName = 'ALT4'
              Width = 100
            end
            object cxGrid1DBTableView1ALT5: TcxGridDBColumn
              DataBinding.FieldName = 'ALT5'
              Width = 100
            end
            object cxGrid1DBTableView1ALT6: TcxGridDBColumn
              DataBinding.FieldName = 'ALT6'
              Width = 100
            end
            object cxGrid1DBTableView1ALT7: TcxGridDBColumn
              DataBinding.FieldName = 'ALT7'
              Width = 100
            end
            object cxGrid1DBTableView1EZPort: TcxGridDBColumn
              DataBinding.FieldName = 'EZPort'
              Width = 100
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cb_PackingType: TcxComboBox
          Left = 184
          Top = 656
          Properties.Items.Strings = (
            'LQFP144'
            'BGA144'
            '')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Text = 'cb_PackingType'
          Width = 261
        end
        object btn_Execute: TcxButton
          Left = 10
          Top = 749
          Width = 123
          Height = 47
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_ExecuteClick
        end
        object ted_DelimSym: TcxTextEdit
          Left = 1293
          Top = 656
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Text = '/'
          Width = 33
        end
        object scb_OutputDir: TcxShellComboBox
          Left = 184
          Top = 683
          Properties.AutoSelect = False
          Properties.ShowFullPath = sfpAlways
          Properties.ValidateOnEnter = False
          Properties.ViewOptions = [scvoShowFiles, scvoShowZipFilesWithFolders]
          Properties.OnChange = scb_OutputFile1PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          OnExit = scb_OutputFile1PropertiesChange
          Width = 466
        end
        object ted_OutFile: TcxTextEdit
          Left = 184
          Top = 710
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Text = 'exported_pinout.csv'
          Width = 273
        end
        object ted_OutSeparator: TcxTextEdit
          Left = 1270
          Top = 710
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Text = ','
          Width = 56
        end
        object cxb_1: TcxButton
          Left = 34
          Top = 613
          Width = 111
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 3
          OnClick = cxb_1Click
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1060#1072#1081#1083' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1085#1099#1093' '#1092#1091#1085#1082#1094#1080#1081' '#1087#1086#1088#1090#1086#1074
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          Control = scb_InputFile1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          Control = mem_Output1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Parent = dxLayoutControl1Group10
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = #1058#1080#1087' '#1082#1086#1088#1087#1091#1089#1072':'
          Control = cb_PackingType
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          Control = btn_Execute
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutControl1Group10
          CaptionOptions.Text = #1056#1072#1079#1076#1077#1083#1103#1102#1097#1080#1081' '#1092#1091#1085#1082#1094#1080#1080' '#1089#1080#1084#1074#1086#1083':'
          Control = ted_DelimSym
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group4
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 3
          AutoCreated = True
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutControl1Group4
          AlignVert = avBottom
          CaptionOptions.Text = #1044#1080#1088#1077#1082#1090#1086#1088#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1092#1072#1081#1083#1072':'
          Control = scb_OutputDir
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Parent = dxLayoutControl1Group11
          AlignHorz = ahClient
          CaptionOptions.Text = #1057#1086#1093#1088#1072#1085#1103#1077#1084#1099#1081' .csv '#1092#1072#1081#1083':'
          Control = ted_OutFile
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = dxLayoutControl1Group11
          CaptionOptions.Text = #1057#1077#1087#1072#1088#1072#1090#1086#1088' '#1074' .csv '#1092#1072#1081#1083#1077':'
          Control = ted_OutSeparator
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group4
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 5
          AutoCreated = True
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxb_1
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1042#1099#1093#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1083#1103' Altium'
      ImageIndex = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1348
        Height = 806
        Align = alClient
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 10
          Top = 10
          Width = 1356
          Height = 743
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = ds_tbl_ExportToAltium
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1displayname: TcxGridDBColumn
              DataBinding.FieldName = 'display name'
              Width = 126
            end
            object cxGrid3DBTableView1designator: TcxGridDBColumn
              DataBinding.FieldName = 'designator'
              Width = 124
            end
            object cxGrid3DBTableView1electricaltype: TcxGridDBColumn
              DataBinding.FieldName = 'electrical type'
              Width = 100
            end
            object cxGrid3DBTableView1description: TcxGridDBColumn
              DataBinding.FieldName = 'description'
              Width = 119
            end
            object cxGrid3DBTableView1orientation: TcxGridDBColumn
              DataBinding.FieldName = 'orientation'
              Width = 100
            end
            object cxGrid3DBTableView1LocationX: TcxGridDBColumn
              DataBinding.FieldName = 'Location X'
            end
            object cxGrid3DBTableView1LocationY: TcxGridDBColumn
              DataBinding.FieldName = 'Location Y'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cxGrid3
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1042#1099#1093#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1083#1103' '#1057'-'#1080' '#1092#1072#1081#1083#1086#1074
      ImageIndex = 2
      object cxg_1: TcxGrid
        Left = 18
        Top = 18
        Width = 1328
        Height = 786
        TabOrder = 0
        object cxgtv_1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = ds_tbl_ExportToC
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxgtv_1PinNumber: TcxGridDBColumn
            DataBinding.FieldName = 'PinNumber'
            Width = 96
          end
          object cxgtv_1PinName: TcxGridDBColumn
            DataBinding.FieldName = 'PinName'
            Width = 360
          end
          object cxgtv_1AltFuncs: TcxGridDBColumn
            DataBinding.FieldName = 'AltFuncs'
            Width = 732
          end
        end
        object cxgl_1: TcxGridLevel
          GridView = cxgtv_1
        end
      end
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cb_PackingType
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end
      item
        Component = scb_InputFile1
        Properties.Strings = (
          'Hint')
      end
      item
        Component = scb_OutputDir
        Properties.Strings = (
          'Hint')
      end
      item
        Component = ted_DelimSym
        Properties.Strings = (
          'Text')
      end
      item
        Component = ted_OutFile
        Properties.Strings = (
          'Text')
      end
      item
        Component = ted_OutSeparator
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'Settings'
    Left = 200
    Top = 120
  end
  object tbl_PinsAltFuncs: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'LQFP144'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BGA144'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PinName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Default'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT0'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT3'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT4'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALT7'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EZPort'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 320
    Top = 120
    object tbl_PinsAltFuncsLQFP144: TStringField
      FieldName = 'LQFP144'
      Size = 50
    end
    object tbl_PinsAltFuncsBGA144: TStringField
      FieldName = 'BGA144'
      Size = 50
    end
    object tbl_PinsAltFuncsPinName: TStringField
      FieldName = 'PinName'
      Size = 50
    end
    object tbl_PinsAltFuncsDefault: TStringField
      FieldName = 'Default'
      Size = 50
    end
    object tbl_PinsAltFuncsALT0: TStringField
      FieldName = 'ALT0'
      Size = 50
    end
    object tbl_PinsAltFuncsALT1: TStringField
      FieldName = 'ALT1'
      Size = 50
    end
    object tbl_PinsAltFuncsALT2: TStringField
      FieldName = 'ALT2'
      Size = 50
    end
    object tbl_PinsAltFuncsALT3: TStringField
      FieldName = 'ALT3'
      Size = 50
    end
    object tbl_PinsAltFuncsALT4: TStringField
      FieldName = 'ALT4'
      Size = 50
    end
    object tbl_PinsAltFuncsALT5: TStringField
      FieldName = 'ALT5'
      Size = 50
    end
    object tbl_PinsAltFuncsALT6: TStringField
      FieldName = 'ALT6'
      Size = 50
    end
    object tbl_PinsAltFuncsALT7: TStringField
      FieldName = 'ALT7'
      Size = 50
    end
    object tbl_PinsAltFuncsEZPort: TStringField
      FieldName = 'EZPort'
      Size = 50
    end
  end
  object ds_tbl_PinsAltFuncs: TDataSource
    DataSet = tbl_PinsAltFuncs
    Left = 320
    Top = 184
  end
  object tbl_ExportToAltium: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'display name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'designator'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'electrical type'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'orientation'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Location X'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Location Y'
        DataType = ftString
        Size = 16
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 576
    Top = 120
    object tbl_ExportToAltiumdisplayname: TStringField
      FieldName = 'display name'
      Size = 255
    end
    object tbl_ExportToAltiumdesignator: TStringField
      FieldName = 'designator'
      Size = 10
    end
    object tbl_ExportToAltiumelectricaltype: TStringField
      FieldName = 'electrical type'
      Size = 32
    end
    object tbl_ExportToAltiumdescription: TStringField
      FieldName = 'description'
      Size = 255
    end
    object tbl_ExportToAltiumorientation: TStringField
      FieldName = 'orientation'
      Size = 32
    end
    object tbl_ExportToAltiumLocationX: TStringField
      FieldName = 'Location X'
      Size = 16
    end
    object tbl_ExportToAltiumLocationY: TStringField
      FieldName = 'Location Y'
      Size = 16
    end
  end
  object ds_tbl_ExportToAltium: TDataSource
    DataSet = tbl_ExportToAltium
    Left = 576
    Top = 184
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 812
    Top = 216
  end
  object tbl_ExportToC: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'PinNumber'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PinName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AltFuncs'
        DataType = ftString
        Size = 512
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 696
    Top = 120
    object tbl_ExportToCPinNumber: TStringField
      FieldName = 'PinNumber'
      Size = 255
    end
    object tbl_ExportToCPinName: TStringField
      FieldName = 'PinName'
      Size = 255
    end
    object tbl_ExportToCAltFuncs: TStringField
      FieldName = 'AltFuncs'
      Size = 512
    end
  end
  object ds_tbl_ExportToC: TDataSource
    DataSet = tbl_ExportToC
    Left = 696
    Top = 176
  end
end
