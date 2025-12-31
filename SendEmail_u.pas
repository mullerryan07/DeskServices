unit SendEmail_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmSendEmail = class(TForm)
    lblHeading: TLabel;
    lblTo: TLabel;
    edtTo: TEdit;
    lblSubject: TLabel;
    edtSubject: TEdit;
    btnSend: TButton;
    redText: TRichEdit;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowScreen(sEmail, sSubject, sBody, sAttachmentOne, sAttachmentTwo : string);
  end;

var
  frmSendEmail: TfrmSendEmail;

implementation

uses
Init_u, Dashboard_u;

{$R *.dfm}

procedure TfrmSendEmail.btnSendClick(Sender: TObject);
begin

  Init.SendEmail(edtTo.Text, edtSubject.Text, redText.Text, '','');

end;

procedure TfrmSendEmail.ShowScreen(sEmail, sSubject, sBody, sAttachmentOne, sAttachmentTwo : string);
begin

  // Add Details
  edtTo.Text := sEmail;
  edtSubject.Text := sSubject;
  redText.Clear;
  redText.Lines.Add(sBody);

  // Show Form Screen
  frmSendEmail.Parent := frmDashboard;
  frmSendEmail.Show;

end;

end.
