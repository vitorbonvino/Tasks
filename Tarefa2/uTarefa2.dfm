object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa2'
  ClientHeight = 157
  ClientWidth = 546
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
  object btnCriarThreads: TButton
    Left = 32
    Top = 120
    Width = 89
    Height = 25
    Caption = 'Criar Threads'
    TabOrder = 0
    OnClick = btnCriarThreadsClick
  end
  object edtIntervalo1: TEdit
    Left = 32
    Top = 34
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '500'
  end
  object pgb1: TProgressBar
    Left = 144
    Top = 34
    Width = 385
    Height = 21
    TabOrder = 2
  end
  object edtIntervalo2: TEdit
    Left = 32
    Top = 66
    Width = 73
    Height = 21
    TabOrder = 3
    Text = '500'
  end
  object pgb2: TProgressBar
    Left = 144
    Top = 66
    Width = 385
    Height = 21
    TabOrder = 4
  end
end
