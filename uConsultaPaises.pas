unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls,
  uPaises, uCadastroPaises;

type
  TConsultaPaises = class(TConsultaPai)
  private
    { Private declarations }
    umPais : Paises;
    umCadastroPaises : TCadastroPaises;
  public
    { Public declarations }
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure Incluir;                                 Override;
    Procedure Alterar;                                 Override;
    Procedure Excluir;                                 Override;
    Procedure Pesquisar;                               Override;
    Procedure Sair;                                    Override;
    Procedure SetCadastro(pObj : TObject);             Override;
  end;

var
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TFrmConsultaPaises }

procedure TConsultaPaises.Alterar;
begin
  umCadastroPaises.ConhecaObj(umPais,nil);
  umCadastroPaises.CarregaEdit;
  umCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umPais := Paises(pObj);
end;
procedure TConsultaPaises.Excluir;
begin
  inherited;
  umCadastroPaises.ConhecaObj(umPais,nil);
  umCadastroPaises.CarregaEdit;
  umCadastroPaises.BloqueiaEdit;
  umCadastroPaises.ShowModal;
  umCadastroPaises.DesbloqueiaEdit;
end;

procedure TConsultaPaises.Incluir;
begin
  inherited;
  umCadastroPaises.ConhecaObj(umPais,nil);
  umCadastroPaises.LimpaEdit;
  umCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.Sair;
begin
  inherited;

end;

procedure TConsultaPaises.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroPaises := TCadastroPaises(pOBj);
end;

end.
