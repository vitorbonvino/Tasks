object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 502
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object memoColunas: TMemo
    Left = 48
    Top = 64
    Width = 185
    Height = 89
    Lines.Strings = (
      'Codigo'
      'Nome')
    TabOrder = 0
  end
  object memoTabelas: TMemo
    Left = 304
    Top = 64
    Width = 185
    Height = 89
    Lines.Strings = (
      'Funcionarios')
    TabOrder = 1
  end
  object memoCondicoes: TMemo
    Left = 568
    Top = 64
    Width = 185
    Height = 89
    Lines.Strings = (
      'Cidade = '#39'Pato Branco'#39
      'Salario >1000')
    TabOrder = 2
  end
  object memoSQL: TMemo
    Left = 48
    Top = 360
    Width = 705
    Height = 97
    TabOrder = 3
  end
  object btnGerarSql: TButton
    Left = 360
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarSqlClick
  end
end
