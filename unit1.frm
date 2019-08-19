object Form1: TForm1
  Left = 488
  Height = 200
  Top = 193
  Width = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'PicColor'
  ClientHeight = 200
  ClientWidth = 128
  OnCreate = FormCreate
  Position = poDefault
  LCLVersion = '6.8'
  object Panel3: TPanel
    Left = 0
    Height = 111
    Top = 89
    Width = 128
    Align = alClient
    ClientHeight = 111
    ClientWidth = 128
    TabOrder = 0
    object EditGreen: TEdit
      Left = 48
      Height = 23
      Top = 56
      Width = 64
      Alignment = taRightJustify
      OnClick = EditGreenClick
      TabOrder = 0
      Text = '0'
    end
    object EditBlue: TEdit
      Left = 48
      Height = 23
      Top = 80
      Width = 64
      Alignment = taRightJustify
      OnChange = EditBlueChange
      OnClick = EditBlueClick
      TabOrder = 1
      Text = '0'
    end
    object EditRed: TEdit
      Left = 48
      Height = 23
      Top = 32
      Width = 64
      Alignment = taRightJustify
      OnClick = EditRedClick
      TabOrder = 2
      Text = '0'
    end
    object EditHex: TEdit
      Left = 48
      Height = 23
      Top = 8
      Width = 64
      Alignment = taRightJustify
      OnClick = EditHexClick
      TabOrder = 3
    end
    object LabelRed: TLabel
      Left = 8
      Height = 15
      Top = 32
      Width = 20
      Caption = 'Red'
      ParentColor = False
    end
    object LabelBlue: TLabel
      Left = 8
      Height = 15
      Top = 80
      Width = 23
      Caption = 'Blue'
      ParentColor = False
    end
    object LabelGreen: TLabel
      Left = 8
      Height = 15
      Top = 56
      Width = 31
      Caption = 'Green'
      ParentColor = False
    end
    object LabelHex: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 20
      Caption = 'Hex'
      ParentColor = False
    end
  end
  object mbDeskPickerButton1: TmbDeskPickerButton
    Left = 0
    Height = 25
    Top = 0
    Width = 128
    Align = alTop
    Caption = 'Pick color'
    TabOrder = 1
    ScreenHintFormat = 'RGB(%r, %g, %b)'#13'Hex: %h'
    OnSelColorChange = mbDeskPickerButton1SelColorChange
  end
  object sc: TmbColorPreview
    Left = 0
    Height = 64
    Top = 25
    Width = 128
    Align = alTop
    OnColorChange = scColorChange
  end
end
