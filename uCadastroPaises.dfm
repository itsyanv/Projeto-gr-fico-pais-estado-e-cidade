inherited CadastroPaises: TCadastroPaises
  Caption = 'Cadastro de Pa'#237'ses'
  PixelsPerInch = 96
  TextHeight = 13
  object LblPais: TLabel [4]
    Left = 55
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object LblSigla: TLabel [5]
    Left = 440
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Sigla'
  end
  object LblDDI: TLabel [6]
    Left = 503
    Top = 16
    Width = 18
    Height = 13
    Caption = 'DDI'
  end
  object EdtPais: TEdit
    Left = 55
    Top = 35
    Width = 361
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 55
    TabOrder = 6
  end
  object EdtSigla: TEdit
    Left = 440
    Top = 35
    Width = 45
    Height = 21
    MaxLength = 5
    TabOrder = 7
  end
  object EdtDDI: TEdit
    Left = 503
    Top = 35
    Width = 45
    Height = 21
    MaxLength = 5
    TabOrder = 8
  end
end
