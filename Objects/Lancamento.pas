unit Lancamento;

interface

uses
  System.SysUtils,
  System.Generics.Collections;
  
type TLancamento = class
  private
    FvlrLanc: Double;
    FtipoDC: string;
    FdescLancamento: string;

  public
    property vlrLanc: Double read FvlrLanc write FvlrLanc;
    property tipoDC: string read FtipoDC write FtipoDC;
    property descLancamento: string read FdescLancamento write FdescLancamento;
    
end;

implementation

end.
