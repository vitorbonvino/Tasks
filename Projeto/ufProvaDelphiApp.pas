unit ufProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfProvaDelphiApp = class(TForm)
    menuPrincipal: TMainMenu;
    mPrincipalTarefas: TMenuItem;
    mPrincipalTarefa1: TMenuItem;
    mPrincipalTarefa2: TMenuItem;
    Panel1: TPanel;
    procedure mPrincipalTarefa1Click(Sender: TObject);
    procedure mPrincipalTarefa2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProvaDelphiApp: TfProvaDelphiApp;

implementation

uses T1.View.Main, uTarefa2;

{$R *.dfm}

procedure TfProvaDelphiApp.mPrincipalTarefa1Click(Sender: TObject);
var
  vForm: TfTarefa1;
begin
  try
    vForm := TfTarefa1.Create(Application);
    vForm.ShowModal
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfProvaDelphiApp.mPrincipalTarefa2Click(Sender: TObject);
var
  vForm: TfTarefa2;
begin
  try
    vForm := TfTarefa2.Create(Application);
    vForm.ShowModal
  finally
    FreeAndNil(vForm);
  end;
end;

end.
