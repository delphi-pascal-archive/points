unit PointUtils;
{$I SVV.INC}

interface

function ByteToBin(B: Byte): string;

implementation

function ByteToBin(B: Byte): string;
var
  i: Byte;
begin
  SetLength(Result, 8);
  for i := 7 downto 0 do Result[8 - i] := Char(B shr i and $01 + Byte('0'));
end;

end.
