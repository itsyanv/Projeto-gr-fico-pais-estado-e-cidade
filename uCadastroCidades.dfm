inherited CadastroCidades: TCadastroCidades
  Caption = 'Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  object LblCidade: TLabel [4]
    Left = 72
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object LblDDD: TLabel [5]
    Left = 330
    Top = 16
    Width = 21
    Height = 13
    Caption = 'DDD'
  end
  object LblCodEstado: TLabel [6]
    Left = 392
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Cod. Estado'
  end
  object LblEstado: TLabel [7]
    Left = 465
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object EdtCidade: TEdit
    Left = 72
    Top = 35
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object EdtDDD: TEdit
    Left = 330
    Top = 35
    Width = 47
    Height = 21
    TabOrder = 7
  end
  object EdtCodEstado: TEdit
    Left = 392
    Top = 35
    Width = 41
    Height = 21
    TabOrder = 8
  end
  object EdtEstado: TEdit
    Left = 465
    Top = 35
    Width = 273
    Height = 21
    TabOrder = 9
  end
  object BtnPesquisar: TButton
    Left = 744
    Top = 33
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 10
    OnClick = BtnPesquisarClick
  end
end
