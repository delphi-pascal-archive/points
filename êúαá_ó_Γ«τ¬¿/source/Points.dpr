program Points;
{$I SVV.INC}

uses
  Forms,
  GamePoint in 'GamePoint.pas' {MainForm},
  NewGameDialog in 'NewGameDialog.pas' {NewGameDlg},
  PointUtils in 'PointUtils.pas';
{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Точки V0.35';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
