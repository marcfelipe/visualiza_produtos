unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Data.SqlExpr, Vcl.StdCtrls,
  IBX.IBCustomDataSet, IBX.IBTable, IBX.IBDatabase, IBX.IBQuery;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    Edit1: TEdit;
    Edit2: TEdit;
    IBQuery1: TIBQuery;
    IBQuery1PROCOD: TIBStringField;
    IBQuery1PROCODAUX: TIBStringField;
    IBQuery1PRODES: TIBStringField;
    IBQuery1PRODESRDZ: TIBStringField;
    IBQuery1TRBID: TIBStringField;
    IBQuery1SECCOD: TIBStringField;
    IBQuery1PROPRCVDAVAR: TIBBCDField;
    IBQuery1PROUNID: TIBStringField;
    IBQuery1PRONCM: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TForm1.Button1Click(Sender: TObject);
begin
IBDatabase1.Connected:=False;
IBDatabase1.DatabaseName:=edit1.text;
IBDatabase1.Connected:=True;
if IBDatabase1.Connected then
     begin
      Application.MessageBox('Conectado ao banco com sucesso','Retorno da Conexão',MB_OK);
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.ParamByName('procodPesquisa').AsString:=LeftPad(edit2.Text,'0',14);
IBQuery1.Open;
end;

procedure TForm1.Edit2Enter(Sender: TObject);
begin
Button2.Default:=true;
end;

end.
