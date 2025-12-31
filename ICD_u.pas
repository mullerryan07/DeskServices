unit ICD_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmICD = class(TForm)
    lblHeading: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICD: TfrmICD;

implementation

uses
Dashboard_u, Init_u;

{$R *.dfm}

end.
