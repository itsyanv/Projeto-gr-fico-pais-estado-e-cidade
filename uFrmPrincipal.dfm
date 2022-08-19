object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 533
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 80
    Top = 48
    object MenuCadastro: TMenuItem
      Caption = 'Cadastros'
      object MenuPaises: TMenuItem
        Caption = 'Pa'#237'ses'
        OnClick = MenuPaisesClick
      end
      object MenuEstados: TMenuItem
        Caption = 'Estados'
        OnClick = MenuEstadosClick
      end
      object MenuCidades: TMenuItem
        Caption = 'Cidades'
        OnClick = MenuCidadesClick
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
    end
  end
end
