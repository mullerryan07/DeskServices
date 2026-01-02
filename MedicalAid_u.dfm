object frmMedicalAid: TfrmMedicalAid
  Left = 0
  Top = 0
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  BorderIcons = [biSystemMenu]
  Caption = 'Medical Aid'
  ClientHeight = 787
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 192
  TextHeight = 32
  object lblHeading: TLabel
    Left = 32
    Top = 32
    Width = 266
    Height = 60
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Medical Aids'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -44
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbMedicalAid: TListBox
    Left = 32
    Top = 120
    Width = 577
    Height = 553
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ItemHeight = 32
    TabOrder = 0
  end
  object btnClose: TButton
    Left = 459
    Top = 704
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Close'
    TabOrder = 1
  end
  object btnView: TButton
    Left = 297
    Top = 704
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'View'
    TabOrder = 2
    OnClick = btnViewClick
  end
end
