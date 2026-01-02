unit MedicalAidView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfrmMedicalAidView = class(TForm)
    lblHeading: TLabel;
    PopupMenu1: TPopupMenu;
    MedicalAidKeyinCalico1: TMenuItem;
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

  // Show Screen
  frmMedicalAidView.Parent := frmDashboard;
  frmMedicalAidView.Show;

end;

end.
