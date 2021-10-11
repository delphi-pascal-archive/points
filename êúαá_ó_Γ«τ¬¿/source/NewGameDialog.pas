unit NewGameDialog;
{$I SVV.INC}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Math;

type

  TNewGameDlg = class(TForm)
  published
    LabelBoardSize: TLabel;
    OkButton: TButton;
    CheckBoxVassal: TCheckBox;
    SpinEditBoardSize: TSpinEdit;
    CancelButton: TButton;
    SpinEditGameLevel: TSpinEdit;
    LabelGameLevel: TLabel;
    procedure SpinEditBoardSizeExit(Sender: TObject);
    procedure SpinEditGameLevelExit(Sender: TObject);
  public
    function ShowDialog(
      var BoardSize: Integer;
      var GameLevel: Integer;
      var Vassal: Boolean;
      const MinGameLevel: Integer;
      const MaxGameLevel: Integer;
      const MinBoardSize: Integer;
      const MaxBoardSize: Integer): Boolean;
  end;

var
  NewGameDlg: TNewGameDlg;

implementation
{$R *.dfm}

function TNewGameDlg.ShowDialog(
  var BoardSize: Integer;
  var GameLevel: Integer;
  var Vassal: Boolean;
  const MinGameLevel: Integer;
  const MaxGameLevel: Integer;
  const MinBoardSize: Integer;
  const MaxBoardSize: Integer): Boolean;
begin
  Self.SpinEditBoardSize.Value := BoardSize;
  Self.SpinEditGameLevel.MaxValue := MaxGameLevel;
  Self.SpinEditGameLevel.MinValue := MinGameLevel;
  Self.SpinEditBoardSize.MaxValue := MaxBoardSize;
  Self.SpinEditBoardSize.MinValue := MinBoardSize;
  Self.SpinEditGameLevel.Value := GameLevel;
  Self.CheckBoxVassal.Checked := Vassal;
  Result := (Self.ShowModal = mrOk);
  if Result then
  begin
    BoardSize := Self.SpinEditBoardSize.Value;
    GameLevel := SpinEditGameLevel.Value;
    Vassal := CheckBoxVassal.Checked;
  end;
end;

procedure TNewGameDlg.SpinEditBoardSizeExit(Sender: TObject);
var
  Temp: Integer;
begin
  if not TryStrToInt(Self.SpinEditBoardSize.Text, Temp) or (Temp < Self.SpinEditBoardSize.MinValue) then
    Self.SpinEditBoardSize.Value := Self.SpinEditBoardSize.MinValue
  else if Temp > Self.SpinEditBoardSize.MaxValue then
    Self.SpinEditBoardSize.Value := Self.SpinEditBoardSize.MaxValue
  else
    Self.SpinEditGameLevel.Value := Temp;
end;

procedure TNewGameDlg.SpinEditGameLevelExit(Sender: TObject);
var
  Temp: Integer;
begin
  if not TryStrToInt(Self.SpinEditGameLevel.Text, Temp) or (Temp < Self.SpinEditGameLevel.MinValue) then
    Self.SpinEditGameLevel.Value := Self.SpinEditGameLevel.MinValue
  else if Temp > Self.SpinEditGameLevel.MaxValue then
    Self.SpinEditGameLevel.Value := Self.SpinEditGameLevel.MaxValue
  else
    Self.SpinEditGameLevel.Value := Temp;
end;

end.
