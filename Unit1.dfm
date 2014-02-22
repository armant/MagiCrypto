object Form1: TForm1
  Left = -10
  Top = 81
  Width = 1032
  Height = 746
  Caption = 'Main Window'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 86
    Height = 13
    Caption = #1054#1090#1082#1088#1099#1090#1099#1081' '#1090#1077#1082#1089#1090':'
  end
  object Label2: TLabel
    Left = 496
    Top = 16
    Width = 60
    Height = 13
    Caption = #1064#1080#1092#1088#1090#1077#1082#1089#1090':'
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 385
    Height = 129
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = #1064#1080#1092#1088#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object SGChisla: TStringGrid
    Left = 8
    Top = 208
    Width = 457
    Height = 457
    ColCount = 17
    DefaultColWidth = 25
    DefaultRowHeight = 25
    FixedCols = 0
    RowCount = 17
    FixedRows = 0
    TabOrder = 2
  end
  object SGText: TStringGrid
    Left = 496
    Top = 208
    Width = 457
    Height = 457
    ColCount = 17
    DefaultColWidth = 25
    DefaultRowHeight = 25
    FixedCols = 0
    RowCount = 17
    FixedRows = 0
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 496
    Top = 32
    Width = 385
    Height = 129
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Button2: TButton
    Left = 496
    Top = 168
    Width = 89
    Height = 25
    Caption = #1044#1077#1096#1080#1092#1088#1086#1074#1072#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 912
    Top = 680
    Width = 89
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 6
    OnClick = Button3Click
  end
end
