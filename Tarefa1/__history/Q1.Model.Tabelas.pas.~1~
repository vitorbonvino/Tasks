unit Q2.Model.Tabelas;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, Q2.Model.Interfaces;

Type

  TTabelas = class(TInterfacedObject, iTabelas)
  private
    Lista: TList<String>;
    function GetTabelas: String;
  public
    constructor Create;
    destructor Destroy; override;
    function ListaAdd(AValue: TStrings): iTabelas;
    function GerarSql: String;
    class function New: iTabelas;
  end;

implementation

{ TTabelas }

constructor TTabelas.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TTabelas.Destroy;
begin
  inherited;
end;

function TTabelas.GerarSql: String;
begin
  Result := GetTabelas;
end;

function TTabelas.GetTabelas: String;
var
  i: Integer;
begin
  for i := 0 to Pred(Lista.Count) do
    Result := Result + Lista.Items[i];
end;

function TTabelas.ListaAdd(AValue: TStrings): iTabelas;
var
  i: Integer;
begin
  Result := Self;

  for i := 0 to Pred(AValue.Count) do
  begin
    if (i = Pred(AValue.Count)) then
      Lista.Add(AValue[i])
    else Lista.Add(AValue[i] + ',');
  end;
end;

class function TTabelas.New: iTabelas;
begin
  Result := Self.Create;
end;

end.
