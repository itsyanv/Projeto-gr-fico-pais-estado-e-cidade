unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uInterface, uPaises, uEstados, uCidades;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuCadastro: TMenuItem;
    MenuPaises: TMenuItem;
    MenuEstados: TMenuItem;
    MenuCidades: TMenuItem;
    Sair: TMenuItem;
    procedure MenuPaisesClick(Sender: TObject);
    procedure MenuEstadosClick(Sender: TObject);
    procedure MenuCidadesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    umaInterface : Interfaces;
    umPais : Paises;
    umEstado : Estados;
    umaCidade : Cidades;
  public
    { Public declarations }
    Procedure ConhecaObj(pPais : Paises; pEstado: Estados; pCidade: Cidades; pInter : Interfaces);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.ConhecaObj(pPais: Paises; pEstado: Estados; pCidade : Cidades; pInter: Interfaces);
begin
  umaInterface := pInter;
  umPais := pPais;
  umEstado := pEstado;
  umaCidade := pCidade;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  umaInterface := Interfaces.CrieObj;
end;

procedure TFrmPrincipal.MenuCidadesClick(Sender: TObject);
begin
  umaInterface.PDCidades(umaCidade,nil);
end;

procedure TFrmPrincipal.MenuEstadosClick(Sender: TObject);
begin
  umaInterface.PDEstados(umEstado,nil);
end;

procedure TFrmPrincipal.MenuPaisesClick(Sender: TObject);
begin
  umaInterface.PDPaises(umPais,nil);
end;

end.
