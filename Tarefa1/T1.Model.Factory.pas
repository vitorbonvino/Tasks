unit T1.Model.Factory;


interface

uses T1.Model.Interfaces, T1.Model.Colunas, T1.Model.Condicoes, T1.Model.Tabelas;

Type

  TFactory = class(TInterfacedObject, iFactory)
    public
    constructor Create;
    destructor Destroy; override;
    class function New: iFactory;
    function Colunas: iColunas;
    function Tabelas: iTabelas;
    function Condicoes: iCondicoes;
  end;

implementation

{ TDisplay }

function TFactory.Colunas: iColunas;
begin
  Result := TColunas.New;
end;

function TFactory.Condicoes: iCondicoes;
begin
  Result := TCondicoes.New;
end;

constructor TFactory.Create;
begin

end;

destructor TFactory.Destroy;
begin

  inherited;
end;

class function TFactory.New: iFactory;
begin
  Result := Self.Create;
end;

function TFactory.Tabelas: iTabelas;
begin
  Result := TTabelas.New;
end;

end.
