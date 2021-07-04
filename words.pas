program words;
const n=40; m=20; {n - number of words, m = number of letters}

type TString=string[m];

var A:array[1..n] of TString;
	s:string;
	k, i: integer;

procedure RemoveSpaces(var s:string);
  begin
	while (s<>'') and (s[1] = ' ') do delete(s,1,1);
  end;

function GetWord(var s:string):TString;
  begin
	GetWord:=copy(s,1,pos(' ',s)-1);
	delete(s,1,pos(' ',s));
	RemoveSpaces(s);
  end;

begin
	writeln('Введите текст');
	readln(s);
	s:=s+' ';
	RemoveSpaces(s);
	k:=0;
	while s <> '' do begin
		k:=k+1;
		A[k] := GetWord(s);
	end;

	for i:=1 to k do writeln(A[i]);
	readln;
end.
