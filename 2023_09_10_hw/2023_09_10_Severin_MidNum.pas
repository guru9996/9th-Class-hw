PROGRAM AveDigitInNum(INPUT, OUTPUT);
VAR
  N, TempN: INTEGER;
  D1, D2, D3, D, DMin, DMax, DMid: SHORTINT;
BEGIN
  READLN(N);

  D1 := N DIV 100;
  D2 := (N DIV 10) MOD 10;
  D3 := N MOD 10;

  TempN := N;
  DMin := 9;
  DMax := 0;
  WHILE TempN > 0
  DO
    BEGIN
      D := TempN MOD 10;
      IF D <= DMin
      THEN
        DMin := D;
      IF D >= DMax
      THEN
        DMax := D;
      TempN := TempN DIV 10
    END;
  IF D1 = D2
  THEN
    DMid := D1
  ELSE
    IF D1 < DMax
    THEN
      IF D1 > DMin
      THEN
        DMid := D1;
  IF D3 = D1
  THEN
    DMid := D1
  ELSE
    IF D3 < DMax
    THEN
      IF D3 > DMin
      THEN
        DMid := D3;
  IF D3 = D2
  THEN
    DMid := D2
  ELSE
    IF D2 < DMax
    THEN
      IF D2 > DMin
      THEN
        DMid := D2;
  WRITELN(DMid);
  READLN
END.
