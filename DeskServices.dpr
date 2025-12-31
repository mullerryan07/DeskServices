program DeskServices;

uses
  Vcl.Forms,
  Init_u in 'Init_u.pas' {Init},
  Dashboard_u in 'Dashboard_u.pas' {frmDashboard},
  MedicalCodes_u in 'MedicalCodes_u.pas' {frmMedicalCodes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInit, Init);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.CreateForm(TfrmMedicalCodes, frmMedicalCodes);
  Application.Run;
end.
