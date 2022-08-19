unit uCidades;

interface
uses uPai, uPaises, uEstados;
type
  Cidades = class(Pai)
  Private
  Protected
    cidade: string[55];
    DDD : String[5];
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo, pCodUser : Integer; pDataCad,pDataUltAlt, pCidade, pDDD : String);
    Procedure SetCidade(pCidade : String);
    Procedure SetDDD(pDDD : String);
    Function GetCidade : String;
    Function GetDDD : String;
    Function Clone : Cidades;
    Destructor Destrua_se;
  End;

implementation



{ Cidades }

function Cidades.Clone: Cidades;
begin
  result := cidades.CrieInit(Codigo, CodUser, DataCad, DataUltAlt, Cidade, DDD);
end;

constructor Cidades.CrieInit(pCodigo, pCodUser: Integer; pDataCad, pDataUltAlt,
  pCidade, pDDD: String);
begin
  codigo := pCodigo;
  CodUser := pCodUser;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  Cidade := pCidade;
  DDD := pDDD;

end;

constructor Cidades.CrieObj;
begin
  Cidade := '';
  DDD := '';

end;

destructor Cidades.Destrua_se;
begin

end;

function Cidades.GetCidade: String;
begin
  result := cidade;
end;

function Cidades.GetDDD: String;
begin
  result := DDD;
end;

procedure Cidades.SetCidade(pCidade: String);
begin
  cidade := pCidade;
end;

procedure Cidades.SetDDD(pDDD: String);
begin
  DDD := pDDD;
end;

end.
