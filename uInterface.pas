unit uInterface;

interface
uses uConsultaPaises, uConsultaEstados ,uConsultaCidades,
     uCadastroPaises, uCadastroEstados, uCadastroCidades;
type
  Interfaces = Class
  Private
  Protected
    umaConsultaPaises : TConsultaPaises;
    umaConsultaEstados : TConsultaEstados;
    umaConsultaCidades : TConsultaCidades;

    umCadastroPaises : TCadastroPaises;
    umCadastroEstados : TCadastroEstados;
    umCadastroCidades : TCadastroCidades;
  Public
    Constructor CrieObj;
    Procedure PDPaises(pObj,pCtrl : TObject);
    Procedure PDEstados(pObj,pCtrl : TObject);
    Procedure PDCidades(pObj,pCtrl : TObject);
    Destructor Destrua_se;
  End;

implementation

{ Interfaces }

constructor Interfaces.CrieObj;
begin
  umaConsultaPaises := TConsultaPaises.Create(nil);
  umaConsultaEstados := TConsultaEstados.Create(nil);
  umaConsultaCidades := TConsultaCidades.Create(nil);

  umCadastroPaises := TCadastroPaises.Create(nil);
  umCadastroEstados := TCadastroEstados.Create(nil);
  umCadastroCidades := TCadastroCidades.Create(nil);

  umaConsultaPaises.SetCadastro(umCadastroPaises);
  umaConsultaEstados.SetCadastro(umCadastroEstados);
  umaConsultaCidades.SetCadastro(umCadastroCidades);

  umCadastroEstados.SetConsulta(umaConsultaPaises);
  umCadastroCidades.SetConsulta(umaConsultaEstados);
end;

destructor Interfaces.Destrua_se;
begin
  umaConsultaPaises.FreeInstance;
  umaConsultaEstados.FreeInstance;
  umaConsultaCidades.FreeInstance;

  umCadastroPaises.FreeInstance;
  umCadastroEstados.FreeInstance;
  umCadastroCidades.FreeInstance;
end;

procedure Interfaces.PDCidades(pObj,pCtrl : TObject);
begin
  umaConsultaCidades.ConhecaObj(pObj,pCtrl);
  umaConsultaCidades.ShowModal;
end;

procedure Interfaces.PDEstados(pObj,pCtrl : TObject);
begin
  umaConsultaEstados.ConhecaObj(pObj,pCtrl);
  umaConsultaEstados.ShowModal;
end;

procedure Interfaces.PDPaises(pObj,pCtrl : TObject);
begin
  umaConsultaPaises.ConhecaObj(pObj,pCtrl);
  umaConsultaPaises.ShowModal;
end;

end.
