PROGRAM NumberOfString(INPUT, OUTPUT);
VAR
  X, N, I: SHORTINT;
  Y, StrPerDay, CounterStr, CounterDays: INTEGER;
BEGIN
  READLN(X, N, Y);

  I := 0;
  StrPerDay := X;
  CounterStr := 0;
  WHILE I < N
  DO
    BEGIN
      IF I > 0
      THEN
        StrPerDay := StrPerDay * 2;
      CounterStr := CounterStr + StrPerDay;
      I := I + 1
    END;

  CounterDays := 0;
  StrPerDay := X;
  WHILE StrPerDay < Y
  DO
    BEGIN
      StrPerDay := StrPerDay * 2;
      CounterDays := CounterDays + 1
    END;
  WRITELN(CounterStr);
  WRITELN(CounterDays);
  READLN
END.
