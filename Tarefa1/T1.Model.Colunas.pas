unit T1.Model.Colunas;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, T1.Model.Interfaces;

Type

  TColunas = class(TInterfacedObject, iColunas)
  private
    Lista: TList<String>;
    function GetCampos: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iColunas;
    function ListaAdd(AValue: TStrings): iColunas;
    function GerarSql: String;
  end;

implementation

{ TColunas }

constructor TColunas.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TColunas.Destroy;
begin
  inherited;
end;

function TColunas.GerarSql: String;
begin
  Result := GetCampos;
end;

function TColunas.GetCampos: String;
var
  i: Integer;
begin
  for i := 0 to Pred(Lista.Count) do
  begin
    Result := Result + Lista.Items[i];
  end;
end;

function TColunas.ListaAdd(AValue: TStrings): iColunas;
var
  i: Integer;
  Campos: String;
begin
  Result := Self;
  Campos := EmptyStr;

  for i := 0 to Pred(AValue.Count) do
  begin
    if (i = Pred(AValue.Count)) then
      Lista.Add(AValue[i])
    else Lista.Add(AValue[i] + ',');
  end;
end;

class function TColunas.New: iColunas;
begin
  Result := Self.Create;
end;

end.
