unit uEstados;

interface
uses uPai, uPaises;
type
  Estados = class(Pai)
  Private
  Protected
    estado : string[55];
    UF : String[5];
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo, pCodUser : Integer; pDataCad,pDataUltAlt, pEstado, pUF : String);
    Procedure SetEstado(pEstado : String);
    Procedure SetUF(pUF : String);
    Function GetEstado : String;
    Function GetUF : String;
    Function Clone : Estados;
    Destructor Destrua_se;
  End;

implementation



{ Estados }

function Estados.Clone: Estados;
begin
   result := estados.CrieInit(Codigo, CodUser, DataCad, DataUltAlt, Estado, UF);
end;

constructor Estados.CrieInit(pCodigo, pCodUser: Integer; pDataCad, pDataUltAlt,
  pEstado,pUF: String);
begin
  codigo := pCodigo;
  CodUser := pCodUser;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  Estado := pEstado;
  UF := pUF;
end;

constructor Estados.CrieObj;
begin
  Estado := '';
  UF := '';

end;

destructor Estados.Destrua_se;
begin

end;

function Estados.GetUF: String;
begin
  result := UF;
end;

function Estados.GetEstado: String;
begin
   result := estado;
end;

procedure Estados.SetUF(pUF: String);
begin
   UF := pUF;
end;

procedure Estados.SetEstado(pEstado: String);
begin
  estado := pEstado;
end;

end.
