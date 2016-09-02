unit uFuncoes;

interface

uses
SysUtils, StrUtils;

function regerarChave(chaveNFE: string ;serie: string;numeroNFE: string): string;
function RightPad(S: string; Ch: Char; Len: Integer): string;
function LeftPad(S: string; Ch: Char; Len: Integer): string;
//function calculaDV(chaveAcesso: string): string;
implementation

function LeftPad(S: string; Ch: Char; Len: Integer): string;
var
  RestLen: Integer;
begin
  Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;

function regerarChave(chaveNFE: string ;serie: string;numeroNFE: string): string;
var
digitos: Array[1..43] of Real;
resParcial: Array[1..43] of Real;
soma,divisao,resultado: Real;
somaI,i,fator: Integer;
chaveString,digito: string;
begin
  soma:=0;
  somaI:=0;
  chaveString:='';
  fator:=2;
  if numeroNFE<>'0' then
    chaveNFE:=stuffstring(chaveNFE,26,9,NumeroNFe);

  chaveNFE:=stuffstring(chaveNFE,23,3,Serie);
  for i:= 1 to 43 do
  begin
    digitos[i]:=StrToFloat(Copy(chaveNFE,i,1));
    chaveString:=chaveString+FloatToStr(digitos[i]);
  end;
//  showmessage(chaveString);
  for i:=43 downto 1 do
  begin
   resParcial[i]:=digitos[i]*fator;
   inc(fator);
   if fator = 10 then
    fator := 2;
   soma := soma + resParcial[i];
  end;
  somaI := Trunc(soma);
  divisao := (somaI mod 11);
  resultado := 11-divisao;
//  if resultado=1 then
  if ((divisao = 1) or (divisao = 0)) then
  begin
    digito:='0';
  end
  else
  begin
    digito:=FloatToStr(resultado);
  end;
  result := chaveString+digito;
end;

function RightPad(S: string; Ch: Char; Len: Integer): string;
var
  RestLen: Integer;
begin
  Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;
end.
