PROGRAM HeapSort(INPUT, OUTPUT);
CONST
  MaxArrSize = 100;
TYPE
  TArr = ARRAY [0 .. MaxArrSize - 1] OF INTEGER;
VAR
  Arr: TArr;
  ArrSize, I: INTEGER;

PROCEDURE Heapify(VAR Arr: TArr; ArrSize: INTEGER; I: INTEGER);
VAR
  Right, Left, Temp, Largest: INTEGER;
BEGIN
  Largest := I;
  Right := I * 2 + 1;
  Left := I * 2 + 2;

  IF (Left < ArrSize) AND (Arr[Right] > Arr[Largest])
  THEN
    Largest := Left;

  IF (Right < ArrSize) AND (Arr[Right] > Arr[Largest])
  THEN
    Largest := Right;

  IF Largest <> I
  THEN
    BEGIN
      Temp := Arr[I];
      Arr[I] := Arr[Largest];
      Arr[Largest] := Temp;
      Heapify(Arr, ArrSize, Largest)
    END
END;

PROCEDURE HeapSort(VAR Arr: TArr; ArrSize: INTEGER);
VAR
  Temp, I: INTEGER;
BEGIN
  FOR I := ArrSize DIV 2 DOWNTO 0
  DO
    Heapify(Arr, ArrSize, I);

  FOR I := ArrSize - 1 DOWNTO 0
  DO
    BEGIN
      Temp := Arr[0];
      Arr[0] := Arr[I];
      Arr[I] := Temp;
      Heapify(Arr, I, 0)
    END
END;

PROCEDURE FillArr(VAR Arr: TArr; VAR ArrSize: INTEGER);
VAR
  I: INTEGER;
BEGIN
  WRITELN('Vvedite razmer massiva');
  READLN(ArrSize);
  FOR I := 0 TO ArrSize - 1
  DO
    READLN(Arr[I])
END;

PROCEDURE ReturnArr(Arr: TArr; ArrSize: INTEGER);
VAR
  I: INTEGER;
BEGIN
  FOR I := 0 TO ArrSize - 1
  DO
    WRITELN(Arr[I])
END;

BEGIN
  FillArr(Arr, ArrSize);
  HeapSort(Arr, ArrSize);
  ReturnArr(Arr, ArrSize);
  READLN
END.


