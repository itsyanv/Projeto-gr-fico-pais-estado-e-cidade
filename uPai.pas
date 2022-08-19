unit uPai;

interface

type
  Pai = Class
  Private
  Protected
    Codigo : Integer;
    DataCad : String[11];
    DataUltAlt : String[11];
    CodUser : Integer;
  Public
    Constructor CrieObj;
    Procedure SetCodigo(pCodigo : Integer);
    Procedure SetDataCad(pDataCad : String);
    Procedure SetDataUltAlt(pDataUltAlt : String);
    procedure SetCodUser(pCodUser : Integer);
    Function GetCodigo : Integer;
    Function GetDataCad : String;
    Function GetDataUltAlt : String;
    Function GetCodUser : Integer;
    Destructor Destrua_se;
  End;
implementation

{ Pai }

constructor Pai.CrieObj;
begin
  Codigo := 0;
  DataCad := '';
  DataUltAlt := '';
  CodUser := 0;
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.GetCodigo: Integer;
begin
  Result := Codigo;
end;

function Pai.GetCodUser: Integer;
begin
  Result := CodUser;
end;

function Pai.GetDataCad: String;
begin
  Result := DataCad;
end;

function Pai.GetDataUltAlt: String;
begin
  Result := DataUltAlt;
end;

procedure Pai.SetCodigo(pCodigo: Integer);
begin
  Codigo := pCodigo;
end;

procedure Pai.SetCodUser(pCodUser: Integer);
begin
  CodUser := pCodUser;
end;

procedure Pai.SetDataCad(pDataCad: String);
begin
  DataCad := pDataCad;
end;

procedure Pai.SetDataUltAlt(pDataUltAlt: String);
begin
  DataUltAlt := pDataUltAlt;
end;

end.
