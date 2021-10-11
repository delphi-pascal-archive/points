object MainForm: TMainForm
  Left = 229
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1075#1088#1072' '#1074' '#1090#1086#1095#1082#1080' v0.35'
  ClientHeight = 470
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    F0FFFFFFFFFFF0FFFFFFFFFFF0FFFFF0000FFFFFFFF0000FFFFFFFF0000FFF09
    9990FFFFFF0CCCC0FFFFFF099990000999900000000CCCC0000000099990FF09
    9990FFFFFFCCCCCCFFFFFF099990FF099990FFFFFCCCCCCCCFFFFF099990FFF0
    000FFFFFCCCC00CCCCFFFFF0000FFFFFF0FFFFFCCCCFF0FCCCCFFFFFF0FFFFFF
    F0FFFFCCCCFFF0FFCCCCFFFFF0FFFFFFF0FFFCCCCFFFF0FFFCCCCFFFF0FFFFFF
    F0FFCCCCFFFFF0FFFFCCCCFFF0FFFFFFF0FCCCCFFFFFF0FFFFFCCCCFF0FFFFFF
    F0CCCCFFFFFFF0FFFFFFCCCCF0FFFFF00CCCCFFFFFF0000FFFFFFCCCC00FFF0C
    CCCCFFFFFF099990FFFFFFCCCCC0000CCCC00000000900900000000CCCC0FF0C
    CCCCFFFFFF090090FFFFFFCCCCC0FF0CCCCCCFFFFF099990FFFFFCCCCCC0FFF0
    00CCCCFFFFF0000FFFFFCCCC000FFFFFF0FCCCCFFFFFF0FFFFFCCCCFF0FFFFFF
    F0FFCCCCFFFFF0FFFFCCCCFFF0FFFFFFF0FFFCCCCFFFF0FFFCCCCFFFF0FFFFFF
    F0FFFFCCCCFFF0FFCCCCFFFFF0FFFFFFF0FFFFFCCCCFF0FCCCCFFFFFF0FFFFFF
    F0FFFFFFCCCCF0CCCCFFFFFFF0FFFFF0000FFFFFFCCCCCCCCFFFFFF0000FFF09
    9990FFFFFFCCCCCCFFFFFF099990000999900000000CCCC0000000099990FF09
    9990FFFFFF0CCCC0FFFFFF099990FF099990FFFFFF0CCCC0FFFFFF099990FFF0
    000FFFFFFFF0000FFFFFFFF0000FFFFFF0FFFFFFFFFFF0FFFFFFFFFFF0FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 16
  object BoardView: TImage
    Left = 0
    Top = 0
    Width = 449
    Height = 449
    OnMouseDown = BoardViewMouseDown
    OnMouseMove = BoardViewMouseMove
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 451
    Width = 450
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = #1058#1086#1095#1082#1080' v0.35'
  end
  object MainMenu: TMainMenu
    Left = 8
    Top = 8
    object MenuFile: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      object MenuItemSaveFile: TMenuItem
        Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = MenuItemSaveFileClick
      end
      object MenuItemLoadFile: TMenuItem
        Caption = '&'#1047#1072#1075#1088#1091#1079#1080#1090#1100
        ShortCut = 16463
        OnClick = MenuItemLoadFileClick
      end
      object MenuItemFileSeparator: TMenuItem
        Caption = '-'
      end
      object MenuItemExit: TMenuItem
        Caption = '&'#1042#1099#1093#1086#1076
        ShortCut = 32856
        OnClick = MenuItemExitClick
      end
    end
    object MenuGame: TMenuItem
      Caption = '&'#1048#1075#1088#1072
      object MenuItemNewGame: TMenuItem
        Caption = '&'#1053#1086#1074#1072#1103
        ShortCut = 120
        OnClick = MenuItemNewGameClick
      end
      object MenuItemEditing: TMenuItem
        Caption = '&'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        ShortCut = 117
        OnClick = MenuItemEditingClick
      end
      object MenuItemName: TMenuItem
        Caption = '&'#1048#1084#1103
        ShortCut = 115
        OnClick = MenuItemNameClick
      end
      object MenuItemGameSeparator: TMenuItem
        Caption = '-'
      end
      object MenuItemVsComp: TMenuItem
        Caption = '&'#1055#1088#1086#1090#1080#1074' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
        Checked = True
        ShortCut = 116
        OnClick = MenuItemVsCompClick
      end
      object MenuItemGameLevel: TMenuItem
        Caption = '&'#1059#1088#1086#1074#1077#1085#1100
        ShortCut = 119
        OnClick = MenuItemGameLevelClick
      end
    end
    object MenuMove: TMenuItem
      Caption = '&'#1061#1086#1076#1099
      object MenuItemShowMove: TMenuItem
        Caption = '&'#1055#1086#1082#1072#1079
        Enabled = False
        ShortCut = 45
        OnClick = MenuItemShowMoveClick
      end
      object MenuItemMoveSeparator1: TMenuItem
        Caption = '-'
      end
      object MenuItemMoveBack: TMenuItem
        Caption = '&'#1053#1072#1079#1072#1076
        Enabled = False
        ShortCut = 8
        OnClick = MenuItemMoveBackClick
      end
      object MenuItemMoveForward: TMenuItem
        Caption = '&'#1042#1087#1077#1088#1077#1076
        Enabled = False
        ShortCut = 32
        OnClick = MenuItemMoveForwardClick
      end
      object MenuItemMoveHalfBack: TMenuItem
        Caption = #1053#1072'&'#1079#1072#1076' '#1085#1072' '#1087#1086#1083#1091#1093#1086#1076
        Enabled = False
        ShortCut = 8200
        OnClick = MenuItemMoveHalfBackClick
      end
      object MenuItemMoveHalfForward: TMenuItem
        Caption = #1042'&'#1087#1077#1088#1077#1076' '#1085#1072' '#1087#1086#1083#1091#1093#1086#1076
        Enabled = False
        ShortCut = 8224
        OnClick = MenuItemMoveHalfForwardClick
      end
      object MenuItemMoveSeparator2: TMenuItem
        Caption = '-'
      end
      object MenuItemMakeMove: TMenuItem
        Caption = #1055'&'#1086#1093#1086#1076#1080#1090#1100
        ShortCut = 16397
        OnClick = MenuItemMakeMoveClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miMarkPoint: TMenuItem
        Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1090#1086#1095#1082#1091
        ShortCut = 13
        OnClick = miMarkPointClick
      end
      object miMarkPoint2: TMenuItem
        Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1090#1086#1095#1082#1091' '#1079#1072' '#1076#1088#1091#1075#1086#1075#1086
        Enabled = False
        ShortCut = 8205
        OnClick = miMarkPoint2Click
      end
    end
    object MenuView: TMenuItem
      Caption = '&'#1042#1080#1076
      object MenuItemIncWindow: TMenuItem
        Caption = #1041#1086#1083#1100#1096#1077
        ShortCut = 107
        OnClick = MenuItemIncWindowClick
      end
      object MenuItemDecWindow: TMenuItem
        Caption = #1052#1077#1085#1100#1096#1077
        ShortCut = 109
        OnClick = MenuItemDecWindowClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miShowCursor: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1085#1099#1081' '#1082#1091#1088#1089#1086#1088
        ShortCut = 16459
        OnClick = miShowCursorClick
      end
      object miHighlight: TMenuItem
        Caption = #1055#1086#1076#1089#1074#1077#1095#1080#1074#1072#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1093#1086#1076
        ShortCut = 16456
        OnClick = miHighlightClick
      end
    end
    object MenuHelp: TMenuItem
      Caption = '&?'
      ShortCut = 8383
      object MenuItemHelp: TMenuItem
        Caption = '&'#1057#1087#1088#1072#1074#1082#1072
        ShortCut = 112
        OnClick = MenuItemHelpClick
      end
      object MenuItemAbout: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ShortCut = 8304
        OnClick = MenuItemAboutClick
      end
    end
    object MenuItemStop: TMenuItem
      Caption = '&'#1057#1090#1086#1087
      Enabled = False
      ShortCut = 27
      OnClick = MenuItemStopClick
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'tch'
    Filter = #1055#1086#1079#1080#1094#1080#1080' '#1080#1075#1088#1099' '#1090#1086#1095#1082#1080'(*.tch)|*.tch|'#1042#1089#1077' '#1092#1072#1081#1083#1099'(*.*)|*.*'
    InitialDir = '.'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofEnableSizing, ofDontAddToRecent]
    Title = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1075#1088#1099
    Left = 40
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'tch'
    Filter = #1055#1086#1079#1080#1094#1080#1080' '#1080#1075#1088#1099' "'#1058#1086#1095#1082#1080'"(*.tch)|*.tch|'#1042#1089#1077' '#1092#1072#1081#1083#1099'(*.*)|*.*'
    InitialDir = '.'
    Options = [ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086#1079#1080#1094#1080#1080
    Left = 72
    Top = 8
  end
end
