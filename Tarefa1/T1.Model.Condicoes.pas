unit T1.Model.Condicoes;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, T1.Model.Interfaces;

Type

  TCondicoes = class(TInterfacedObject, iCondicoes)
  private
   Lista: TList<String>;
   function GetCondicoes: String;
  public
    constructor Create;
    destructor Destroy; override;
    function ListaAdd(AValue: TStrings): iCondicoes;
    function GerarSql: String;
    class function New: iCondicoes;
  end;

implementation

{ TCondicoes }

constructor TCondicoes.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TCondicoes.Destroy;
begin

  inherited;
end;

function TCondicoes.GerarSql: String;
begin
  Result := GetCondicoes;
end;

function TCondicoes.GetCondicoes: String;
var
  i: Integer;
begin
  for i := 0 to Pred(Lista.Count) do
    Result := Result + Lista.Items[i];
end;

function TCondicoes.ListaAdd(AValue: TStrings): iCondicoes;
var
  i: Integer;
begin
  Result := Self;

  for i := 0 to Pred(AValue.Count) do
  begin
    if (i = Pred(AValue.Count)) then
      Lista.Add(AValue[i])
    else Lista.Add(AValue[i] + ' AND ');
  end;
end;

class function TCondicoes.New: iCondicoes;
begin
  Result := Self.Create;
end;

end.
