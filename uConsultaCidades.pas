unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls,
  uCidades, uCadastroCidades;

type
  TConsultaCidades = class(TConsultaPai)
  private
    { Private declarations }
    umaCidade : Cidades;
    umCadastroCidades : TCadastroCidades;
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
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TConsultaCidades }

procedure TConsultaCidades.Alterar;
begin
  inherited;
  umCadastroCidades.ConhecaObj(umaCidade,nil);
  umCadastroCidades.CarregaEdit;
  umCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaCidade := Cidades(pObj);
end;

procedure TConsultaCidades.Excluir;
begin
  inherited;
  umCadastroCidades.ConhecaObj(umaCidade,nil);
  umCadastroCidades.CarregaEdit;
  umCadastroCidades.BloqueiaEdit;
  umCadastroCidades.ShowModal;
  umCadastroCidades.DesbloqueiaEdit;
end;

procedure TConsultaCidades.Incluir;
begin
  inherited;
  umCadastroCidades.ConhecaObj(umaCidade,nil);
  umCadastroCidades.LimpaEdit;
  umCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCidades.Sair;
begin
  inherited;
end;

procedure TConsultaCidades.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroCidades := TCadastroCidades(pObj);
end;

end.
