unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls,
  uEstados, uCadastroEstados;

type
  TConsultaEstados = class(TConsultaPai)
  private
    { Private declarations }
    umEstado : Estados;
    umCadastroEstados : TCadastroEstados;
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
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
begin
  inherited;
  umCadastroEstados.ConhecaObj(umEstado,nil);
  umCadastroEstados.CarregaEdit;
  umCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
end;

procedure TConsultaEstados.Excluir;
begin
  inherited;
  umCadastroEstados.ConhecaObj(umEstado,nil);
  umCadastroEstados.CarregaEdit;
  umCadastroEstados.BloqueiaEdit;
  umCadastroEstados.ShowModal;
  umCadastroEstados.DesbloqueiaEdit;
end;

procedure TConsultaEstados.Incluir;
begin
  inherited;
  umCadastroEstados.ConhecaObj(umEstado,nil);
  umCadastroEstados.LimpaEdit;
  umCadastroEstados.ShowModal;

end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.Sair;
begin
  inherited;
end;

procedure TConsultaEstados.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroEstados := TCadastroEstados(pObj);
end;

end.
