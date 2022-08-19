unit uConsultaPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TConsultaPai = class(TFrmPai)
    EdtChave: TEdit;
    BtnPesquisar: TButton;
    ListView1: TListView;
    BtnIncluir: TButton;
    BtnExcluir: TButton;
    BtnAlterar: TButton;
    BtnSair: TButton;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure Incluir;                                 Virtual;
    Procedure Alterar;                                 Virtual;
    Procedure Excluir;                                 Virtual;
    Procedure Pesquisar;                               Virtual;
    Procedure Sair;                                    Virtual;
    Procedure SetCadastro(pObj : TObject);             Virtual; Abstract;
  end;

var
  ConsultaPai: TConsultaPai;

implementation

{$R *.dfm}

{ TFrmConsultaPai }

procedure TConsultaPai.Alterar;
begin

end;

procedure TConsultaPai.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  Alterar;
end;

procedure TConsultaPai.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  Excluir;
end;

procedure TConsultaPai.BtnIncluirClick(Sender: TObject);
begin
  inherited;
  Incluir;
end;

procedure TConsultaPai.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TConsultaPai.BtnSairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TConsultaPai.ConhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TConsultaPai.Excluir;
begin

end;

procedure TConsultaPai.Incluir;
begin

end;

procedure TConsultaPai.Pesquisar;
begin

end;

procedure TConsultaPai.Sair;
begin
  Close;
end;

end.
