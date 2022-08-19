inherited CadastroPai: TCadastroPai
  Caption = 'Cadastro Pai'
  PixelsPerInch = 96
  TextHeight = 13
  object LblCodigo: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object LblDataCad: TLabel
    Left = 16
    Top = 527
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
  end
  object LblDataUltAlt: TLabel
    Left = 256
    Top = 527
    Width = 104
    Height = 13
    Caption = 'Data '#218'ltima Altera'#231#227'o'
  end
  object LblUserUltAlt: TLabel
    Left = 175
    Top = 527
    Width = 58
    Height = 13
    Caption = 'User Ult. Alt'
  end
  object EdtCodigo: TEdit
    Left = 16
    Top = 35
    Width = 33
    Height = 21
    TabOrder = 0
  end
  object BtnSalvar: TButton
    Left = 648
    Top = 544
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = BtnSalvarClick
  end
  object BtnSair: TButton
    Left = 744
    Top = 544
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 2
    OnClick = BtnSairClick
  end
  object EdtDatCadastro: TEdit
    Left = 16
    Top = 546
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdtDataUltAlt: TEdit
    Left = 256
    Top = 546
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdtUserUltAlt: TEdit
    Left = 175
    Top = 546
    Width = 58
    Height = 21
    TabOrder = 5
  end
end
