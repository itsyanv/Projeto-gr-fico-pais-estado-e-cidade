unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls,
  uCidades, uConsultaEstados;

type
  TCadastroCidades = class(TCadastroPai)
    LblCidade: TLabel;
    EdtCidade: TEdit;
    LblDDD: TLabel;
    EdtDDD: TEdit;
    LblCodEstado: TLabel;
    EdtCodEstado: TEdit;
    LblEstado: TLabel;
    EdtEstado: TEdit;
    BtnPesquisar: TButton;
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    umaCidade : Cidades;
    umaConsultaEstados : TConsultaEstados;
  public
    { Public declarations }
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
    procedure SetConsulta(pObj: TObject);              override;
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

{ TCadastroCidades }

procedure TCadastroCidades.BloqueiaEdit;
begin
  inherited;
  self.EdtCidade.Enabled := False;
  self.EdtDDD.Enabled := False;
end;

procedure TCadastroCidades.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  umaConsultaEstados.ShowModal;
end;

procedure TCadastroCidades.CarregaEdit;
begin
  inherited;
  self.EdtCodigo.Text := inttostr(umaCidade.GetCodigo);
  self.EdtCidade.Text := umaCidade.GetCidade;
  self.EdtDDD.Text := umaCidade.GetDDD;

end;

procedure TCadastroCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaCidade := Cidades(pObj);
end;

procedure TCadastroCidades.DesbloqueiaEdit;
begin
  inherited;
  self.EdtCidade.Enabled := True;
  self.EdtDDD.Enabled := True;
end;

procedure TCadastroCidades.LimpaEdit;
begin
  inherited;
  self.EdtCidade.Clear;
  self.EdtDDD.Clear;

end;

procedure TCadastroCidades.Sair;
begin
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;
    if Length(EdtCidade.Text) = 0 then
  begin
    ShowMessage('O campo cidade é obrigatório');
    EdtCidade.SetFocus;
  end
  else if Length(EdtDDD.Text) = 0 then
  begin
    ShowMessage('O campo DDD é obrigatório');
    EdtDDD.SetFocus;
  end
  else
  begin
    umaCidade.SetCodigo(StrToInt(EdtCodigo.Text));
    umaCidade.SetCidade(EdtCidade.Text);
    umaCidade.SetDDD(EdtDDD.Text);
  end;

end;

procedure TCadastroCidades.SetConsulta(pObj: TObject);
begin
  inherited;
  umaConsultaEstados := TConsultaEstados(pObj);

end;

end.
