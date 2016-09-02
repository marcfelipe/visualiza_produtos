program VisualizaProduto;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {Form1},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
