PROGRAM Numberofstring(INPUT, OUTPUT);

VAR
X, N: BYTE;                                         {X - ��ப ���� � ���� ����, N - ������⢮ ����}
Y, StrPerDay, CounterStr, CounterDays, I: INTEGER;  {Y - ������� ��ଠ, ������ ���� �ॢ����}

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

  WRITELN(CounterStr);  {�㬬�୮� ������⢮ ��ப �� N ���� (����� ���� ��ப ����� � 2 ࠧ�, 祬 � ����)}
  WRITELN(CounterDays); {���� �㦭�, �⮡� ������� ��ଠ �ॢ�ᨫ� Y ��ப}
  READLN
END. {NumberOfStrings}