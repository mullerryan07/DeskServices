unit MedicalCodes_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmMedicalCodes = class(TForm)
    lblHeading: TLabel;
    tvCodes: TTreeView;
    redText: TRichEdit;
    btnClose: TButton;
    procedure ItemClicked(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowScreen;
  end;

var
  frmMedicalCodes: TfrmMedicalCodes;

implementation

uses
Dashboard_u, Init_u;

{$R *.dfm}

procedure TfrmMedicalCodes.btnCloseClick(Sender: TObject);
begin

  // Close the Screen
  frmMedicalCodes.Close;

end;

procedure TfrmMedicalCodes.ItemClicked(Sender: TObject);
begin

  // Clear redText
  redText.Clear;

  // Extract the Code that was selected
  var sCode : string := tvCodes.Selected.Text;

  // If an ICD-10 Code was selected

  redText.Lines.Add('ICD-10 Code Index' + #13);

  Init.tblICD.First;

  while not Init.tblICD.Eof do
  begin

    if Init.tblICD['ICDCode'] = sCode then
    begin

      redText.Lines.Add('Selected Code:' + #9 + sCode);
      redText.Lines.Add('Description:' + #9 + Init.tblICD['ICDDescription']);

    end;

    Init.tblICD.Next;

  end;

end;

procedure TfrmMedicalCodes.ShowScreen;
begin

  // Clear TreeView
  tvCodes.Items.Clear;

  // Add the ICD-10 Codes
  Init.tblICD.First;

  while not Init.tblICD.Eof do
  begin

    tvCodes.Items.Add(nil, Init.tblICD['ICDCode']);

    Init.tblICD.Next;

  end;

  // Show Screen
  frmMedicalCodes.Parent := frmDashboard;
  frmMedicalCodes.Show;

end;

end.
