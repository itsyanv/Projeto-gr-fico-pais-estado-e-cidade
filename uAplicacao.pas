unit uAplicacao;

interface
uses uFrmPrincipal, uInterface, uPaises, uEstados, uCidades;
type
  Aplicacao = Class
  Private
  Protected
    umFrmPrincipal : TFrmPrincipal;
    umaInterface : Interfaces;
    umPais : Paises;
    umEstado : Estados;
    umaCidade : Cidades;
  Public
    Constructor CrieObj;
    Procedure Execute_se;
    Destructor Destrua_se;
  End;

implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
  umFrmPrincipal := TFrmPrincipal.Create(nil);
  umaInterface := Interfaces.CrieObj;
  umPais := Paises.CrieObj;
  umEstado := Estados.CrieObj;
  umaCidade := Cidades.CrieObj;
end;

destructor Aplicacao.Destrua_se;
begin
  umFrmPrincipal.FreeInstance;
  umaInterface.Destrua_se;
  umPais.Destrua_se;
  umEstado.Destrua_se;
  umaCidade.Destrua_se;
end;

procedure Aplicacao.Execute_se;
begin
  umPais.SetCodigo(20);
  umEstado.SetCodigo(1);
  umFrmPrincipal.ConhecaObj(umPais, umEstado, umaCidade, umaInterface);
  umFrmPrincipal.ShowModal;

end;

end.
