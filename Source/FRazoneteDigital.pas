unit FRazoneteDigital;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Lancamento,
  Vcl.Buttons, Vcl.Grids, ContaContabil, System.Generics.Collections,
  Vcl.ActnMan, Vcl.ActnColorMaps;

type
  TfrmRazoneteDigital = class(TForm)
    pnl_geral: TPanel;
    pnl_fundo_sistema: TPanel;
    lst_contas: TListBox;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edt_conta_contabil: TEdit;
    edt_conta_descricao: TEdit;
    Panel4: TPanel;
    spb_incluir_lancamento: TSpeedButton;
    spb_incluir_conta: TSpeedButton;
    edt_valor: TEdit;
    Label3: TLabel;
    combo_tipoDC: TComboBox;
    Label4: TLabel;
    edt_descricao_lancamento: TEdit;
    Label5: TLabel;
    Shape1: TShape;
    lst_lancamentos: TListBox;
    Splitter1: TSplitter;
    mmConta: TMemo;
    procedure spb_incluir_contaClick(Sender: TObject);
    procedure spb_incluir_lancamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function podeLancar: Boolean;
    procedure montarLancamento;

  public
    { Public declarations }

    listaDeContas: TObjectList<TContaContabil>;

  end;

var
  frmRazoneteDigital: TfrmRazoneteDigital;

implementation

{$R *.dfm}

procedure TfrmRazoneteDigital.Button1Click(Sender: TObject);
var
  razao: TPanel;

begin
  razao := TPanel.Create(nil);

  razao.Caption := 'Teste';
  razao.Align := alTop;
  razao.Width  := 100;
  razao.Height := 200;
  razao.Color := clRed;






end;

procedure TfrmRazoneteDigital.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 listaDeContas.Free;
end;

procedure TfrmRazoneteDigital.FormCreate(Sender: TObject);
begin
 listaDeContas := TObjectList<TContaContabil>.Create;
end;

procedure TfrmRazoneteDigital.montarLancamento;
var
  i,j: Integer;
  totDeb,TotCred,Total: Double;
begin
  mmConta.Lines.Clear;

  if listaDeContas.Count >= 1 then
  begin
    for I := 0 to Pred(listaDeContas.Count) do
      begin
        totDeb  := 0;
        TotCred := 0;
        Total   := 0;

        mmConta.Lines.Add('');
        mmConta.Lines.Add('===='+listaDeContas[i].descricao+'===');
        mmConta.Lines.Add('');


        for j := 0 to Pred(listaDeContas[i].lancamentos.Count) do
          begin
            if listaDeContas[i].lancamentos[j].tipoDC = 'D' then
            begin
              mmConta.Lines.Add(listaDeContas[i].lancamentos[j].tipoDC +'-'
                  + listaDeContas[i].lancamentos[j].descLancamento     +'-'
                   + listaDeContas[i].lancamentos[j].vlrLanc.ToString );
            end;
          end;

        for j := 0 to Pred(listaDeContas[i].lancamentos.Count) do
          begin
            if listaDeContas[i].lancamentos[j].tipoDC = 'C' then
            begin
              mmConta.Lines.Add(listaDeContas[i].lancamentos[j].tipoDC +'-'
                  + listaDeContas[i].lancamentos[j].descLancamento     +'-'
                   + listaDeContas[i].lancamentos[j].vlrLanc.ToString );
            end;
          end;

          for j := 0 to Pred(listaDeContas[i].lancamentos.Count) do
          begin
            if listaDeContas[i].lancamentos[j].tipoDC = 'D' then
              totDeb := totDeb + listaDeContas[i].lancamentos[j].vlrLanc
            else
            TotCred := TotCred + listaDeContas[i].lancamentos[j].vlrLanc;
          end;

          Total := totDeb - TotCred;
          mmConta.Lines.Add('');
          mmConta.Lines.Add('======Saldo: '+ FloatToStr(Total)+ '  ========');
          mmConta.Lines.Add('');
      end;
  end;

end;

function TfrmRazoneteDigital.podeLancar: Boolean;
begin
  Result := True;

  if lst_contas.ItemIndex = -1  then
  begin
    Result := False;
    ShowMessage('Conta não selecionada');
    Exit;
  end;

  if edt_valor.Text = '' then
  begin
    Result := False;
    ShowMessage('Valor não informado');
    Exit;
  end;

  if combo_tipoDC.Text = ''then
  begin
    Result := False;
    ShowMessage('Tipo de Dc nao informado');
    Exit;
  end;
end;

procedure TfrmRazoneteDigital.spb_incluir_contaClick(Sender: TObject);
var
  conta: TContaContabil;
  i: Integer;
begin
  if ((edt_conta_contabil.Text <> '') and  (edt_conta_descricao.Text <> '')) then
  begin
    conta := TContaContabil.create;
    conta.codigo    := edt_conta_contabil.Text;
    conta.descricao := edt_conta_descricao.Text;

    i := lst_contas.Count + 1;
    lst_contas.AddItem(conta.descricao, conta );
    listaDeContas.Add(conta);
    edt_conta_contabil.Text  := '';
    edt_conta_descricao.Text := '';
    edt_conta_descricao.SetFocus;
  end
  else
  begin
    ShowMessage('Campos codigo e descricao da conta obrigatorio');
  end;


end;

procedure TfrmRazoneteDigital.spb_incluir_lancamentoClick(Sender: TObject);
var
  i: Integer;
  descConta: string;
  lancamento: TLancamento;
begin
  if not podeLancar then
  Exit  ;

  descConta := lst_contas.Items[lst_contas.ItemIndex];

  for i := 0 to Pred(listaDeContas.Count) do
  begin
    if descConta = listaDeContas[i].descricao then
    begin
      lancamento := TLancamento.Create;
      lancamento.descLancamento := edt_descricao_lancamento.Text;
      lancamento.tipoDC         := combo_tipoDC.Text;
      lancamento.vlrLanc        := StrToFloat(edt_valor.Text);

      listaDeContas[i].lancamentos.Add(lancamento);
      lst_lancamentos.AddItem(lancamento.tipoDC + '-'
                            + lancamento.descLancamento + '-'
                            + listaDeContas[i].descricao, lancamento );
    end;
  end;
  montarLancamento;
end;

end.


