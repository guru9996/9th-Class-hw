PROGRAM RemoveNegativeNumbersFromSubsequence(INPUT, OUTPUT);
TYPE
  EXO = ^QUEUE;
  QUEUE = RECORD
            Data: INTEGER;
            Next: EXO
          END;

VAR
  FIn, FOut: TEXT;
  BeginQueue, EndQueue: EXO;
  Num: INTEGER;

PROCEDURE Push(VAR BeginQeue, EndQueue: EXO; Element: INTEGER); {Push}
VAR
  Pointer: EXO;
BEGIN
  NEW(Pointer);
  Pointer^.Data := Element;
  Pointer^.Next := NIL;
  IF BeginQueue = NIL
  THEN
    BeginQueue := Pointer
  ELSE
    EndQueue^.Next := Pointer;
  EndQueue := Pointer;
  WRITELN('item added')
END;{Push}

FUNCTION IsEmpty(BeginQueue: EXO): BOOLEAN; {IsEmpty}
BEGIN
  IF BeginQueue = NIL
  THEN
    IsEmpty := TRUE
  ELSE
    IsEmpty := FALSE
END;{IsEmpty}

PROCEDURE CHECK(VAR BeginQueue: EXO; VAR Element: INTEGER); {Check}
VAR
  Pointer: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    Element := BeginQueue^.Data
END;{Check}

PROCEDURE Front(VAR BeginQueue: EXO; VAR Element: INTEGER); {Front}
VAR
  Pointer: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      Element := BeginQUeue^.Data;
      Pointer := BeginQueue;
      BeginQueue := BeginQueue^.Next;
      DISPOSE(Pointer)
    END
END;{Front}

PROCEDURE Pop(VAR BeginQueue: EXO); {Pop}
VAR
  TempPointer: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      TempPointer := BeginQueue;
      BeginQueue := BeginQueue^.Next;
      DISPOSE(TempPointer);
      WRITELN('item deleted')
    END
END;{Pop}

PROCEDURE Clear(VAR BeginQueue: EXO); {Clear}
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      WHILE BeginQueue <> NIL
      DO
        Pop(BeginQueue)
      WRITELN('queue cleared')
    END
END;{Clear}

BEGIN {RemoveNegativeNumbersFromSubsequence}
  ASSIGN(FIn, 'input.txt');
  RESET(FIn);
  Num := 0;
  WHILE NOT EOF(FIn)
  DO
    BEGIN
      READ(FIn, Num);
      IF Num <> 0 {eto reshenie sledushego kommentaria, no ono plohoe}
      THEN
        Push(BeginQueue, EndQueue, Num) {tut on zanosit znak konca stroki kak 0,veroyatno, ne znau, kak eto ubrat, na zadachu eto ne vliuyaet}
    END;
  CLOSE(FIn);

  ASSIGN(FOut, 'output.txt');
  REWRITE(FOut);
  WHILE BeginQueue <> NIL
  DO
    BEGIN
      Check(BeginQueue, Num);
      IF Num > 0
      THEN
        BEGIN
          Front(BeginQueue, Num);
          WRITE(FOut, Num, ' ')
        END
      ELSE
        Pop(BeginQueue)
    END;
  CLOSE(FOut);
  READLN
END.{RemoveNegativeNumbersFromSubsequence}

