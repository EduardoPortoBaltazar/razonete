unit ContaContabil;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  Lancamento;

type TContaContabil = class
  private
    Fdescricao: string;
    Fcodigo: string;
    Flancamentos: TObjectList<TLancamento>;


  public
    property descricao: string read Fdescricao write Fdescricao;
    property codigo: string read Fcodigo write Fcodigo;
    property lancamentos: TObjectList<TLancamento> read Flancamentos write Flancamentos;

  constructor create;
  destructor destroy; override;

end;


implementation

{ TContaContabil }

constructor TContaContabil.create;
begin
  Flancamentos := TObjectList<TLancamento>.Create;
end;

destructor TContaContabil.destroy;
begin
  Flancamentos.Free;
  inherited;
end;

end.
