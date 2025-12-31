object frmSendEmail: TfrmSendEmail
  Left = 0
  Top = 0
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Send an Email'
  ClientHeight = 890
  ClientWidth = 1254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 192
  TextHeight = 32
  object lblHeading: TLabel
    Left = 32
    Top = 32
    Width = 282
    Height = 59
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Send an Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -43
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTo: TLabel
    Left = 32
    Top = 128
    Width = 30
    Height = 32
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'To:'
  end
  object lblSubject: TLabel
    Left = 32
    Top = 180
    Width = 84
    Height = 32
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Subject:'
  end
  object edtTo: TEdit
    Left = 160
    Top = 125
    Width = 1057
    Height = 40
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    TabOrder = 0
    Text = 'mullerryan77@gmail.com'
  end
  object edtSubject: TEdit
    Left = 160
    Top = 177
    Width = 1057
    Height = 40
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    TabOrder = 1
    Text = 'Test Email'
  end
  object btnSend: TButton
    Left = 1067
    Top = 812
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Send'
    TabOrder = 2
    OnClick = btnSendClick
  end
  object redText: TRichEdit
    Left = 32
    Top = 240
    Width = 1185
    Height = 545
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'This is a test Email from Delphi.')
    ParentFont = False
    TabOrder = 3
  end
end
