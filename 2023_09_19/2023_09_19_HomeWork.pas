PROGRAM Numberofstring(INPUT, OUTPUT);

VAR
X, N: BYTE;                                         {X - строк кода в первый день, N - количество дней}
Y, StrPerDay, CounterStr, CounterDays, I: INTEGER;  {Y - дневная норма, которую надо превысить}

BEGIN {NumberOfStrings}
  READLN(X, N, Y);

  I := 0;
  StrPerDay := X;
  WHILE I <= N
  DO
    BEGIN
      counterStr := counterStr + counterStr * 2;
      I := I + 1
    END;

  StrPerDay := X;
  CounterDays := 0;
  WHILE StrPerDay <= Y
  DO
    BEGIN
      CounterDays := CounterDays + 1;
      StrPerDay := StrPerDay * 2
    END;

  WRITELN(CounterStr);  {Суммарное количество строк за N дней (каждый день строк больше в 2 раза, чем в прошлый)}
  WRITELN(CounterDays); {Дней нужно, чтобы дневная норма превысила Y строк}
  READLN
END. {NumberOfStrings}