Program EXO_8;
Var 
    b, x, i : longint;
{$i nb_1.pas}
{$i POSITION.pas}
Begin
    i := 2;
    b := 11;
    readln(x);
    WRITELN('nombr=code');
    writeln ('1=1');
    writeln('2=11');
    While i <> x Do
        Begin
            If nb_1(b) Mod 2 = 0 Then
                Begin
                    If b Mod 10 = 1 Then
                        Begin
                            b := b-1;
                        End
                    Else
                        Begin
                            b := b + 1;
                        End;
                End
            Else
                Begin
                    If (b Div( posi(b)) Mod 10 = 1) Then
                        Begin
                            b := b Mod posi(b) + (b Div (posi(b) * 10)) * posi(b * 10);
                        End
                    Else
                        Begin
                            b := b Mod posi(b) + ((b Div (posi(b) * 10)) * posi(b * 10)) + posi(b);
                        End;
                    End;
            i := i + 1;
            writeln(i,'=', b);
        End;
End.