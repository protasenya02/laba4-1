program laba4;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, math;

const
n = 20;
n1=1048575; //2^n-1
//  n=10 ;
//  n1=1023;
//n=4;
//n1=15;



type
   Tmas = array [1 .. n] of integer;
   Bmas1= array [1 .. n1] of integer;
   StringMas=  array [1 .. n1] of string;
var
  Amas: Tmas;
  Bmas: Bmas1;
  s: StringMas;

  i, index,j,m,f: integer;
  s1,s2: string;

begin

  writeln('write initial massive:');       //ввод начального массива
   randomize;
   for i:=1 to n do
   begin
   Amas [i]:= random(100)-50;
   write(Amas[i], '  ');
   end;

//  for i := 1 to n do           // ввод с клавиатуры
//  begin
//    read(Amas[i]);
//  end;

  writeln;
  writeln('write M:'); // ввод  M
  readln(m);

  bmas[1]:= amas[1];   // присвоение начального значения bmass
  s[1]:=inttostr (amas[1]);
  index := 2;
  f:=1;

  for i := 2 to n do       // заполение bmass
  begin

    Bmas[index] := Amas[i];
    s1:= IntToStr(Amas[i]); //присвоение строкого массива
    s[index] :=s1;
    inc(index);

     for j := 1 to f do
     begin
        Bmas[index]:=Amas[i]+Bmas[j];
        S[index]:= s[j]+' '+s1; // строковый массив
        inc (index);
     end;
      f:=f*2+1;
  end;

   writeln;
   writeln('result massives:');
  for i:= 1 to n1 do
   begin
    if (Bmas[i]=m) then
     begin
     writeln (S[i]);
     end;
   end;

   readln;
end.
