program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
 larik=array [1..100] of integer;
var
 a:larik;
 i,j,n:integer;
Procedure input;
begin
 write('Berapa data : ');readln(n);
 for i:=1 to n do readln(a[i]);
end;
Function mean:real;
var x:real;
begin
 x:=0;
 for i:=1 to n do
 begin
 x:=x+a[i];   
 end;
 mean:=x/n;
end;
Function median:real;
var b:integer;
begin
 for i:=1 to n-1 do
 begin
 b:=0;
 for j:=n downto i do
 if a[j]<a[i] then
 begin
 b:=a[i];
 a[i]:=a[j];
 a[j]:=b;
 end;
 end;

if n mod 2 = 0 then
median:=(a[n div 2]+a[(n div 2)+1])/2
else
median:=a[(n div 2)+1];
end;
Function modus:integer;
type dus=array [1..100] of integer;

var mo:dus;
begin
 for i:=1 to n do
 begin
 mo[i]:=0;
 for j:=i+1 to n do
 begin
 if a[i]=a[j] then
 mo[i]:=mo[i]+1;
 end;
 end;

 for i:=1 to n do
 begin
 if mo[i]>0 then
 modus:=i;
 end;
end;
begin
 input;
 mean;
 median;
 modus;
 writeln('Mean : ',mean:3:2);
 writeln('Median : ',median:2:1);
 writeln('Modus : ',a[modus]);
end.
 