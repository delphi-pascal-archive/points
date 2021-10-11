object NewGameDlg: TNewGameDlg
  Left = 508
  Top = 219
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072' '#1074' '#1090#1086#1095#1082#1080
  ClientHeight = 129
  ClientWidth = 270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object LabelBoardSize: TLabel
    Left = 8
    Top = 16
    Width = 90
    Height = 16
    Caption = #1056#1072#1079#1084#1077#1088' '#1087#1086#1083#1103':'
  end
  object LabelGameLevel: TLabel
    Left = 8
    Top = 49
    Width = 60
    Height = 16
    Caption = #1059#1088#1086#1074#1077#1085#1100':'
  end
  object OkButton: TButton
    Left = 8
    Top = 96
    Width = 121
    Height = 26
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object CheckBoxVassal: TCheckBox
    Left = 8
    Top = 73
    Width = 241
    Height = 19
    Caption = #1042#1072#1089#1089#1072#1083' '#1084#1086#1077#1075#1086' '#1074#1072#1089#1089#1072#1083#1072' - '#1085#1077' '#1084#1086#1081
    TabOrder = 1
  end
  object SpinEditBoardSize: TSpinEdit
    Left = 104
    Top = 8
    Width = 161
    Height = 26
    MaxValue = 63
    MinValue = 7
    TabOrder = 2
    Value = 7
    OnExit = SpinEditBoardSizeExit
  end
  object CancelButton: TButton
    Left = 144
    Top = 96
    Width = 121
    Height = 26
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object SpinEditGameLevel: TSpinEdit
    Left = 80
    Top = 40
    Width = 185
    Height = 27
    MaxValue = 5
    MinValue = 2
    TabOrder = 4
    Value = 2
    OnExit = SpinEditGameLevelExit
  end
end
