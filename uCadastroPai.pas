unit uCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls;

type
  TCadastroPai = class(TFrmPai)
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
    BtnSalvar: TButton;
    BtnSair: TButton;
    LblDataCad: TLabel;
    LblDataUltAlt: TLabel;
    EdtDatCadastro: TEdit;
    EdtDataUltAlt: TEdit;
    LblUserUltAlt: TLabel;
    EdtUserUltAlt: TEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Virtual;
    Procedure CarregaEdit;                             Virtual;
    Procedure BloqueiaEdit;                            Virtual;
    Procedure DesbloqueiaEdit;                         Virtual;
    Procedure Salvar;                                  Virtual;
    Procedure Sair;                                    Virtual;
    procedure SetConsulta(pObj: TObject);              virtual; abstract;

  end;

var
  CadastroPai: TCadastroPai;

implementation

{$R *.dfm}

{ TFrmCadastro }

procedure TCadastroPai.BloqueiaEdit;
begin

end;

procedure TCadastroPai.BtnSairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TCadastroPai.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  Salvar;
end;

procedure TCadastroPai.CarregaEdit;
begin

end;

procedure TCadastroPai.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TCadastroPai.DesbloqueiaEdit;
begin

end;

procedure TCadastroPai.LimpaEdit;
begin

end;

procedure TCadastroPai.Sair;
begin
  Close;
end;

procedure TCadastroPai.Salvar;
begin

end;

end.
