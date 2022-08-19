inherited CadastroEstados: TCadastroEstados
  Caption = 'Cadastro de Estados'
  PixelsPerInch = 96
  TextHeight = 13
  object LblEstado: TLabel [4]
    Left = 64
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object LblUF: TLabel [5]
    Left = 394
    Top = 16
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object LblCodPais: TLabel [6]
    Left = 458
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Cod. Pa'#237's'
  end
  object LblPais: TLabel [7]
    Left = 521
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object EdtEstado: TEdit
    Left = 64
    Top = 35
    Width = 313
    Height = 21
    TabOrder = 6
  end
  object EdtUF: TEdit
    Left = 394
    Top = 35
    Width = 45
    Height = 21
    TabOrder = 7
  end
  object EdtCodPais: TEdit
    Left = 458
    Top = 35
    Width = 45
    Height = 21
    TabOrder = 8
  end
  object EdtPais: TEdit
    Left = 521
    Top = 35
    Width = 217
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
