PROGRAM Ochered(INPUT, OUTPUT);
TYPE
  EXO = ^QUEUE;
  QUEUE = RECORD
            Data: INTEGER;
            Next: EXO
          END;

VAR
  BeginQueue, EndQueue: EXO;
  Num, I: INTEGER;

PROCEDURE Push(VAR BeginQeue, EndQueue: EXO; C: INTEGER);
VAR
  Pointer: EXO;
BEGIN
  NEW(Pointer);
  Pointer^.Data := C;
  Pointer^.Next := NIL;
  IF BeginQueue = NIL
  THEN
    BeginQueue := Pointer
  ELSE
    EndQUeue^.Next := Pointer;
  EndQueue := Pointer
END;

FUNCTION IsEmpty(BeginQueue: EXO): BOOLEAN;
BEGIN
  IF BeginQueue = NIL
  THEN
    IsEmpty := TRUE
  ELSE
    IsEmpty := FALSE
END;

PROCEDURE Front(VAR BeginQueue: EXO; VAR C: INTEGER);
VAR
  Pointer: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      C := BeginQUeue^.Data;
      Pointer := BeginQueue;
      BeginQueue := BeginQueue^.Next;
      DISPOSE(Pointer);
      WRITELN('item added');
    END
END;

PROCEDURE Pop(VAR BeginQueue: EXO);
VAR
  X: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      X := BeginQueue;
      BeginQueue := BeginQueue^.Next;
      DISPOSE(X);
      WRITELN('item deleted');
    END
END;

PROCEDURE Clear(VAR BeginQueue: EXO);
VAR
  X: EXO;
BEGIN
  IF IsEmpty(BeginQueue)
  THEN
    WRITELN('queue is empty')
  ELSE
    BEGIN
      WHILE BeginQueue <> NIL
      DO
        BEGIN
          Pop(BeginQueue)
        END;
      WRITELN('queue cleared')
    END
END;

BEGIN //prosto testi
  WHILE I < 3
  DO
    BEGIN
      I := I + 1;
      READLN(Num);
      Push(BeginQueue, EndQueue, Num)
    END;
  Pop(BeginQueue);
  READLN
END.
                             s