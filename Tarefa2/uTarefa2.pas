unit uTarefa2;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Winapi.Windows;

type
  TfTarefa2 = class(TForm)
    btnCriarThreads: TButton;
    edtIntervalo1: TEdit;
    pgb1: TProgressBar;
    edtIntervalo2: TEdit;
    pgb2: TProgressBar;
    procedure btnCriarThreadsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

uses
  System.Threading;

{$R *.dfm}

procedure TfTarefa2.btnCriarThreadsClick(Sender: TObject);
var
  FTask1: ITask;
  FTask2: ITask;
begin
  FTask1 := TTask.Run(
    procedure
    var
      processed: integer;
      total: integer;
    begin
      processed := 0;
      total := 100;
      TParallel.For(0, 100,
        procedure(i: Integer)
        var
          new: Integer;
        begin
          Sleep(StrToInt(edtIntervalo1.Text));
          new := InterlockedIncrement(processed);
          pgb1.Position := new;
        end
      );
    end
  );

  FTask2 := TTask.Run(
    procedure
    var
      processed: integer;
      total: integer;
    begin
      processed := 0;
      total := 100;
      TParallel.For(0, 100,
        procedure(i: Integer)
        var
          new: Integer;
        begin
          Sleep(StrToInt(edtIntervalo2.Text));
          new := InterlockedIncrement(processed);
          pgb2.Position := new;
        end
      );
    end
  );

end;

end.
