object frmDashboard: TfrmDashboard
  Left = 0
  Top = 0
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'DeskServices'
  ClientHeight = 889
  ClientWidth = 1338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  ShowInTaskBar = True
  OnClose = OnClose
  PixelsPerInch = 192
  TextHeight = 32
  object MainMenu1: TMainMenu
    Left = 768
    Top = 560
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
    object Exit2: TMenuItem
      Caption = 'Medical Aids'
      object MedicalAidLookup1: TMenuItem
        Caption = 'Medical Aid Lookup'
        OnClick = MedicalAidLookup1Click
      end
      object MedicalAidLookup2: TMenuItem
        Caption = 'Medical Codes'
        OnClick = MedicalAidLookup2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ICD10Codes2: TMenuItem
        Caption = 'Motivations'
      end
    end
    object Appointments1: TMenuItem
      Caption = 'Appointments'
      object Appointments2: TMenuItem
        Caption = 'Attendance Letters'
      end
    end
    object Stock1: TMenuItem
      Caption = 'Stock'
      object Stock2: TMenuItem
        Caption = 'Stock Lookup'
        OnClick = Stock2Click
      end
      object ListofSuppliers1: TMenuItem
        Caption = 'List of Suppliers'
        OnClick = ListofSuppliers1Click
      end
    end
    object ListofSuppliers2: TMenuItem
      Caption = 'Patients'
      object Query1: TMenuItem
        Caption = 'Query'
        OnClick = Query1Click
      end
    end
    object Email1: TMenuItem
      Caption = 'Email'
      object Email2: TMenuItem
        Caption = 'Send Email'
        OnClick = Email2Click
      end
      object EmailPreferences1: TMenuItem
        Caption = 'Email Preferences'
      end
    end
    object Lookup1: TMenuItem
      Caption = 'Lookup'
      object Lookup2: TMenuItem
        Caption = 'Stores'
        OnClick = Lookup2Click
      end
    end
    object EmailPreferences2: TMenuItem
      Caption = 'Help'
      object Documentation1: TMenuItem
        Caption = 'Documentation'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object CodePolish1: TMenuItem
        Caption = 'CodePolish'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object LicenseManager1: TMenuItem
        Caption = 'License Manager'
      end
      object LicenseManager2: TMenuItem
        Caption = 'About DeskServices'
      end
    end
  end
end
