unit Init_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, ADODB, DB;

type
  TInit = class(TForm)
    Image1: TImage;
    lblProcess: TLabel;
    tTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public

    // Calico Database Enabled
    var bCalico : boolean;
    procedure CalicoFeatures(bCalico : boolean);
    procedure CalicoCheck;

    // Calico Database

    var dbCalicoConnect: TADOConnection;

      // ICD10 Codes
      var tblICD : TADOTable;
      var dscICD: TDataSource;

      // Stock
      var tblStock : TADOTable;
      var dscStock : TDataSource;

      // Stock Suppliers
      var tblSuppliers : TADOTable;
      var dscSuppliers : TDataSource;

  end;

var
  Init: TInit;

implementation

uses
Dashboard_u;

{$R *.dfm}

procedure TInit.CalicoCheck;
begin

  if bCalico = False then
  begin

    MessageDlg('This function requires Advanced Calico Features to be enabled. Please restart DeskServices to continue, and when prompted, click "Yes".', TMsgDlgType.mtError, [mbOK], mrOk);
    Exit;

  end;

end;

procedure TInit.CalicoFeatures(bCalico: boolean);
begin

  if bCalico = True then
  begin

    // Calico Database Connection

    dbCalicoConnect := TADOConnection.Create(Self);
    dbCalicoConnect.LoginPrompt := False;
    dbCalicoConnect.Connected := False;

    dbCalicoConnect.ConnectionString :=
      'Provider=SQLOLEDB;' +
      'Data Source=SERVER\SQLEXPRESS;' +
      'Initial Catalog=Calico;' +
      'User ID=sa;' +
      'Password=Password1;' +
      'Persist Security Info=False;';

    dbCalicoConnect.Open;

      // ICD-10 Codes
      tblICD := TADOTable.Create(Self);
      tblICD.Connection := dbCalicoConnect;
      tblICD.TableName := 'dbo.Codes_ICD';
      tblICD.Open;
      dscICD := TDataSource.Create(Self);
      dscICD.DataSet := tblICD;

      // Stock
      tblStock := TADOTable.Create(Self);
      tblStock.Connection := dbCalicoConnect;
      tblStock.TableName := 'dbo.Stock_FieldsStd';
      tblStock.Open;
      dscStock := TDataSource.Create(Self);
      dscStock.DataSet := tblStock;

      // Stock Suppliers
      tblSuppliers := TADOTable.Create(Self);
      tblSuppliers.Connection := dbCalicoConnect;
      tblSuppliers.TableName := 'dbo.Stock_Supplier';
      tblSuppliers.Open;
      dscSuppliers := TDataSource.Create(Self);
      dscSuppliers.DataSet := tblSuppliers;

  end;

end;

procedure TInit.FormCreate(Sender: TObject);
begin

  // Status: Starting Up
  lblProcess.Caption := 'Starting Up';

  // Enable the Timer
  tTimer.Enabled := True;

end;

procedure TInit.tTimerTimer(Sender: TObject);
begin

  // Disable the Timer
  tTimer.Enabled := False;

  // CodePolish (The Debugger)
  lblProcess.Caption := 'CodePolish';

  // Licensing
  lblProcess.Caption := 'Licensing';

  // Calico Features
  lblProcess.Caption := 'Calico Advanced Features';

  if MessageDlg('Would you like to utilise advanced features in your current session?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], mrYes) = mrYes then
  begin

    // Set Calico Features to True
    bCalico := True;
    CalicoFeatures(bCalico);

  end
  else
  begin

    // Set Calico Features to False
    bCalico := False;
    CalicoFeatures(bCalico);

  end;

  // Templates
  lblProcess.Caption := 'Templates';

  // Login
  // This is currently replaced for the Dashboard directly as login is not available.
  lblProcess.Caption := 'Completed';

  frmDashboard.Show;
  Init.Hide;

end;

end.
