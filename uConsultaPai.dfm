inherited ConsultaPai: TConsultaPai
  Caption = 'Consulta Pai'
  PixelsPerInch = 96
  TextHeight = 13
  object EdtChave: TEdit
    Left = 16
    Top = 16
    Width = 274
    Height = 21
    TabOrder = 0
  end
  object BtnPesquisar: TButton
    Left = 296
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = BtnPesquisarClick
  end
  object ListView1: TListView
    Left = 16
    Top = 43
    Width = 801
    Height = 494
    Columns = <>
    TabOrder = 2
  end
  object BtnIncluir: TButton
    Left = 472
    Top = 547
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 3
    OnClick = BtnIncluirClick
  end
  object BtnExcluir: TButton
    Left = 653
    Top = 547
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 4
    OnClick = BtnExcluirClick
  end
  object BtnAlterar: TButton
    Left = 565
    Top = 547
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 5
    OnClick = BtnAlterarClick
  end
  object BtnSair: TButton
    Left = 742
    Top = 547
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 6
    OnClick = BtnSairClick
  end
end
