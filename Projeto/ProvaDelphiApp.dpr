program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufProvaDelphiApp in 'ufProvaDelphiApp.pas' {fProvaDelphiApp},
  Vcl.Themes,
  Vcl.Styles,
  T1.Model.Colunas in '..\Tarefa1\T1.Model.Colunas.pas',
  T1.Model.Condicoes in '..\Tarefa1\T1.Model.Condicoes.pas',
  T1.Model.Factory in '..\Tarefa1\T1.Model.Factory.pas',
  T1.Model.Interfaces in '..\Tarefa1\T1.Model.Interfaces.pas',
  T1.Model.Tabelas in '..\Tarefa1\T1.Model.Tabelas.pas',
  T1.View.Main in '..\Tarefa1\T1.View.Main.pas' {fTarefa1},
  uTarefa2 in '..\Tarefa2\uTarefa2.pas' {fTarefa2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TfProvaDelphiApp, fProvaDelphiApp);
  Application.CreateForm(TfTarefa1, fTarefa1);
  Application.CreateForm(TfTarefa2, fTarefa2);
  Application.Run;
end.
