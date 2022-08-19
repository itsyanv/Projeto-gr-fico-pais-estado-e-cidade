program Projeto_Grafico;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uConsultaPai in 'uConsultaPai.pas' {ConsultaPai},
  uCadastroPai in 'uCadastroPai.pas' {CadastroPai},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uInterface in 'uInterface.pas',
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uAplicacao in 'uAplicacao.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas';

{$R *.res}
var
  umaAplicacao : Aplicacao;
begin
  //Application.Initialize;
  //Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TConsultaPai, ConsultaPai);
  Application.CreateForm(TCadastroPai, CadastroPai);
  Application.CreateForm(TConsultaPaises, ConsultaPaises);
  Application.CreateForm(TConsultaCidades, ConsultaCidades);
  Application.CreateForm(TConsultaEstados, ConsultaEstados);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  //Application.Run;
  umaAplicacao := Aplicacao.CrieObj;
  umaAplicacao.Execute_se;
  umaAplicacao.Destrua_se;
end.
