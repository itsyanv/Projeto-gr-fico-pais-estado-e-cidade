unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls,
  uPaises;

type
  TCadastroPaises = class(TCadastroPai)
    LblPais: TLabel;
    EdtPais: TEdit;
    LblSigla: TLabel;
    EdtSigla: TEdit;
    LblDDI: TLabel;
    EdtDDI: TEdit;
  private
    { Private declarations }
    umPais : Paises;
  public
    { Public declarations }
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.BloqueiaEdit;
begin
  inherited;
  self.EdtPais.Enabled := False;
  self.EdtSigla.Enabled := False;
  self.EdtDDI.Enabled := False;
end;

procedure TCadastroPaises.CarregaEdit;
begin
  inherited;
  self.EdtCodigo.Text := inttostr(umPais.GetCodigo);
  self.EdtPais.Text := umPais.GetPais;
  self.EdtSigla.Text := umPais.GetSigla;
  self.EdtDDI.Text := umPais.GetDDI;
end;

procedure TCadastroPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umPais := Paises(pObj);
end;

procedure TCadastroPaises.DesbloqueiaEdit;
begin
  inherited;
  self.EdtPais.Enabled := True;
  self.EdtSigla.Enabled := True;
  self.EdtDDI.Enabled := True;
end;

procedure TCadastroPaises.LimpaEdit;
begin
  inherited;
  self.EdtPais.Clear;
  self.EdtSigla.Clear;
  self.EdtDDI.Clear;
end;

procedure TCadastroPaises.Sair;
begin
  inherited;

end;

procedure TCadastroPaises.Salvar;
begin
  inherited;
  if Length(EdtPais.Text) = 0 then
  begin
    ShowMessage('O campo país é obrigatório');
    EdtPais.SetFocus;
  end
  else if Length(EdtSigla.Text) = 0 then
  begin
    ShowMessage('O campo sigla é obrigatório');
    EdtSigla.SetFocus;
  end
  else if Length(EdtDDI.Text) = 0 then
  begin
    ShowMessage('O campo DDI é obrigatório');
    EdtDDI.SetFocus;
  end
  else
  begin
    umPais.SetCodigo(StrToInt(EdtCodigo.Text));
    umPais.SetPais(EdtPais.Text);
    umPais.SetSigla(EdtSigla.Text);
    umPais.SetDDI(EdtDDI.Text);
  end;
end;

end.
