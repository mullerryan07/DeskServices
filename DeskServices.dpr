program DeskServices;

uses
  Vcl.Forms,
  Init_u in 'Init_u.pas' {Init},
  Dashboard_u in 'Dashboard_u.pas' {frmDashboard};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInit, Init);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.Run;
end.
