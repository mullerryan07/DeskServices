object frmMedicalAidView: TfrmMedicalAidView
  Left = 0
  Top = 0
  Caption = 'Medical Aid Viewer'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblHeading: TLabel
    Left = 16
    Top = 16
    Width = 117
    Height = 30
    Caption = 'MedicalAid'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 136
    object MedicalAidKeyinCalico1: TMenuItem
      Caption = 'Medical Aid Key in Calico'
      OnClick = MedicalAidKeyinCalico1Click
    end
  end
end
