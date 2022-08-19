unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, uEstados,
  uPaises, uConsultaPaises;

type
  TCadastroEstados = class(TCadastroPai)
    LblEstado: TLabel;
    EdtEstado: TEdit;
    LblUF: TLabel;
    EdtUF: TEdit;
    LblCodPais: TLabel;
    EdtCodPais: TEdit;
    LblPais: TLabel;
    EdtPais: TEdit;
    BtnPesquisar: TButton;
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    umEstado : Estados;
    umaConsultaPaises : TConsultaPaises;
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
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.BloqueiaEdit;
begin
  inherited;
  self.EdtEstado.Enabled := False;
  self.EdtUF.Enabled := False;
end;

procedure TCadastroEstados.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  umaConsultaPaises.ShowModal;
end;

procedure TCadastroEstados.CarregaEdit;
begin
  inherited;
  self.EdtCodigo.Text := inttostr(umEstado.GetCodigo);
  self.EdtPais.Text := umEstado.GetEstado;
  self.EdtUF.Text := umEstado.GetUF;
end;

procedure TCadastroEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
end;

procedure TCadastroEstados.DesbloqueiaEdit;
begin
  inherited;
  self.EdtEstado.Enabled := True;
  self.EdtUF.Enabled := True;
end;

procedure TCadastroEstados.LimpaEdit;
begin
  inherited;
  self.EdtEstado.Clear;
  self.EdtUF.Clear;
end;

procedure TCadastroEstados.Sair;
begin
  inherited;

end;

procedure TCadastroEstados.Salvar;
begin
  inherited;
  if Length(EdtEstado.Text) = 0 then
  begin
    ShowMessage('O campo estado é obrigatório');
    EdtEstado.SetFocus;
  end
  else if Length(EdtUF.Text) = 0 then
  begin
    ShowMessage('O campo UF é obrigatório');
    EdtUF.SetFocus;
  end
  else
  begin
    umEstado.SetCodigo(StrToInt(EdtCodigo.Text));
    umEstado.SetEstado(EdtEstado.Text);
    umEstado.SetUF(EdtUF.Text);
  end;

end;

procedure TCadastroEstados.SetConsulta(pObj: TObject);
begin
  inherited;
  umaConsultaPaises := TConsultaPaises(pObj);
end;

end.
