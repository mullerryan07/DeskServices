unit MedicalAid_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMedicalAid = class(TForm)
    lblHeading: TLabel;
    lbMedicalAid: TListBox;
    btnClose: TButton;
    btnView: TButton;
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowScreen;
  end;

var
  frmMedicalAid: TfrmMedicalAid;

implementation

uses
Dashboard_u, Init_u, MedicalAidView_u;

{$R *.dfm}

{ TfrmMedicalAid }

procedure TfrmMedicalAid.btnViewClick(Sender: TObject);
begin

  // Get current item
  var sItem : string := lbMedicalAid.Items[lbMedicalAid.ItemIndex];

  // Get medical aid key
  var sMedicalAidKey : string;

  Init.tblMedicalAid.First;

  while not Init.tblMedicalAid.Eof do
  begin

    if Init.tblMedicalAid['MedicalAidName'] = sItem then
    begin

      sMedicalAidKey := Init.tblMedicalAid['MedicalAidKey'];

    end;

    Init.tblMedicalAid.Next;

  end;

  frmMedicalAidView.ShowScreen(sMedicalAidKey);

end;

procedure TfrmMedicalAid.ShowScreen;
begin

  // Clear list box
  lbMedicalAid.Clear;

  // List box populate
  Init.tblMedicalAid.First;

  while not Init.tblMedicalAid.Eof do
  begin

    lbMedicalAid.Items.Add(Init.tblMedicalAid['MedicalAidName']);

    Init.tblMedicalAid.Next;

  end;

  // Show Screen
  frmMedicalAid.Parent := frmDashboard;
  frmMedicalAid.Show;

end;

end.
