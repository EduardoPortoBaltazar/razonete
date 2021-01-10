program RazoneteDigital;

uses
  Vcl.Forms,
  FRazoneteDigital in 'Source\FRazoneteDigital.pas' {frmRazoneteDigital},
  ContaContabil in 'Objects\ContaContabil.pas',
  Lancamento in 'Objects\Lancamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRazoneteDigital, frmRazoneteDigital);
  Application.Run;
end.
