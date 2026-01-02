program DeskServices;

uses
  Vcl.Forms,
  Init_u in 'Init_u.pas' {Init},
  Dashboard_u in 'Dashboard_u.pas' {frmDashboard},
  MedicalCodes_u in 'MedicalCodes_u.pas' {frmMedicalCodes},
  SendEmail_u in 'SendEmail_u.pas' {frmSendEmail},
  EASendMailObjLib_TLB in 'EASendMailObjLib_TLB.pas',
  MedicalAidView_u in 'MedicalAidView_u.pas' {frmMedicalAidView},
  Stores_u in 'Stores_u.pas' {frmStores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInit, Init);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.CreateForm(TfrmMedicalCodes, frmMedicalCodes);
  Application.CreateForm(TfrmSendEmail, frmSendEmail);
  Application.CreateForm(TfrmMedicalAidView, frmMedicalAidView);
  Application.CreateForm(TfrmStores, frmStores);
  Application.Run;
end.
