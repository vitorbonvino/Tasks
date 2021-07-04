object fProvaDelphiApp: TfProvaDelphiApp
  Left = 0
  Top = 0
  Caption = 'ProvaDelphiApp'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 411
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object menuPrincipal: TMainMenu
    Left = 800
    Top = 352
    object mPrincipalTarefas: TMenuItem
      Caption = 'Tarefas'
      object mPrincipalTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = mPrincipalTarefa1Click
      end
      object mPrincipalTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = mPrincipalTarefa2Click
      end
    end
  end
end
