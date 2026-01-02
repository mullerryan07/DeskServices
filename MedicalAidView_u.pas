unit MedicalAidView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmMedicalAidView = class(TForm)
    pmMedicalAidViewer: TPopupMenu;
    MedicalAidKeyinCalico1: TMenuItem;
    PageControl1: TPageControl;
    tbsMedicalAidPlans: TTabSheet;
    tbsContactDetails: TTabSheet;
    lblAdministrator: TLabel;
    lblPeriod: TLabel;
    edtAdministrator: TEdit;
    edtPeriod: TEdit;
    edtContracted: TEdit;
    lblContracted: TLabel;
    lblPhysical: TLabel;
    edtPA1: TEdit;
    edtPA2: TEdit;
    edtPA3: TEdit;
    edtPA4: TEdit;
    edtPA5: TEdit;
    edtPA6: TEdit;
    lblPostal: TLabel;
    edtPO1: TEdit;
    edtPO2: TEdit;
    edtPO3: TEdit;
    edtPO4: TEdit;
    edtPO5: TEdit;
    edtPO6: TEdit;
    lblContact: TLabel;
    edtContactPerson: TEdit;
    lblEmail: TLabel;
    edtEmailAddress: TEdit;
    lblFaxNumber: TLabel;
    edtFax: TEdit;
    edtPhone: TEdit;
    lblTelephone: TLabel;
    tbsMediSwitch: TTabSheet;
    Image1: TImage;
    lblEDICode: TLabel;
    edtEDICode: TEdit;
    lblHeading: TLabel;
    lblOptions: TLabel;
    tbsComments: TTabSheet;
    redComments: TRichEdit;
    btnClose: TButton;
    btnSave: TButton;
    procedure MedicalAidKeyinCalico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowScreen(sMedicalAidKey : string);
    var sCurrentMedicalAidKey : string;
  end;

var
  frmMedicalAidView: TfrmMedicalAidView;

implementation

uses
Init_u, Dashboard_u;

{$R *.dfm}

{ TfrmMedicalAidView }

procedure TfrmMedicalAidView.MedicalAidKeyinCalico1Click(Sender: TObject);
begin

  // ShowMessage with the Database Key in Calico
  ShowMessage('Medical Aid Key: ' + sCurrentMedicalAidKey + #13 + 'Calico Database Relay 1: dbo.sec_MedicalAid' + #13 + 'Calico Database Relay 2: dbo.sec_MedicalAidPlans');

end;

procedure TfrmMedicalAidView.ShowScreen(sMedicalAidKey: string);
begin

  // Set Current Medical Aid Key
  sCurrentMedicalAidKey := sMedicalAidKey;

  // Get Medical Aid Key
  Init.tblMedicalAid.First;

  while not Init.tblMedicalAid.Eof do
  begin

    if Init.tblMedicalAid['MedicalAidKey'] = sMedicalAidKey then
    begin

      // Medical Aid is Correct

      lblHeading.Caption := Init.tblMedicalAid['MedicalAidName'];

      edtAdministrator.Text := Init.tblMedicalAid['Administrator'];
      edtPeriod.Text := Init.tblMedicalAid['Period'];
      edtContracted.Text := Init.tblMedicalAid['Contracted'];

      edtPA1.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress1'];
      edtPA2.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress2'];
      edtPA3.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress3'];
      edtPA4.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress4'];
      edtPA5.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress5'];
      edtPA6.Text := Init.tblMedicalAid['MedicalAidPhysicalAddress6'];

      edtPO1.Text := Init.tblMedicalAid['MedicalAidPostalAddress1'];
      edtPO2.Text := Init.tblMedicalAid['MedicalAidPostalAddress2'];
      edtPO3.Text := Init.tblMedicalAid['MedicalAidPostalAddress3'];
      edtPO4.Text := Init.tblMedicalAid['MedicalAidPostalAddress4'];
      edtPO5.Text := Init.tblMedicalAid['MedicalAidPostalAddress5'];
      edtPO6.Text := Init.tblMedicalAid['MedicalAidPostalAddress6'];

      edtContactPerson.Text := Init.tblMedicalAid['MedicalAidContactPerson'];
      edtEmailAddress.Text := Init.tblMedicalAid['MedicalAidEMailAddress'];
      edtPhone.Text := Init.tblMedicalAid['MedicalAidPhoneNumber'];
      edtFax.Text := Init.tblMedicalAid['MedicalAidFaxNumber'];

      edtEDICode.Text := Init.tblMedicalAid['EDICode'];

    end;

    Init.tblMedicalAid.Next;

  end;

  // Show Screen
  frmMedicalAidView.Parent := frmDashboard;
  frmMedicalAidView.Show;

end;

end.
