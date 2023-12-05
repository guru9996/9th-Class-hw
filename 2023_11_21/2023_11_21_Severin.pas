PROGRAM SumOfPositiveNums(INPUT, OUTPUT);
CONST
  MaxArrSize = 100;
TYPE
  TArr = ARRAY [0 .. MaxArrSize - 1] OF INTEGER;
VAR
  ArrSize: SHORTINT;
  Arr: TArr;

PROCEDURE FillArr(VAR Arr: TArr; VAR ArrSize: SHORTINT);
VAR
  I: SHORTINT;
BEGIN
  READLN(ArrSize);
  FOR I := 0 TO ArrSize - 1
  DO
    READLN(Arr[I])
END;

PROCEDURE ReturnArr(Arr: TArr; ArrSize: SHORTINT);
VAR
  I: SHORTINT;
BEGIN
  FOR I := 0 TO ArrSize - 1 
  DO
    WRITELN(Arr[I]);
END;

FUNCTION SumOfPositive(Arr: TArr; ArrSize: SHORTINT): INTEGER;
VAR
  I, Sum: SHORTINT;
BEGIN
  Sum := 0;
  FOR I := 0 TO ArrSize - 1 
  DO
    IF Arr[I] > 0
    THEN
      Sum := Sum + Arr[I];
  SumOfPositive := Sum 
END;

FUNCTION SumOfEvenIndexAndOddNum(Arr: TArr; ArrSize: SHORTINT): INTEGER;
VAR
  I, Sum: SHORTINT;
BEGIN
  Sum := 0;
  FOR I := 0 TO ArrSize - 1 
  DO
    BEGIN
      IF I MOD 2 = 0
      THEN
        IF Arr[I] MOD 2 <> 0
        THEN 
          Sum := Sum + Arr[I]
    END;
  SumOfEvenIndexAndOddNum := Sum 
END;

FUNCTION MirrorArr(Arr: TArr; ArrSize: SHORTINT): TArr;
VAR
  I, J: SHORTINT;
  TempArr: TArr;
BEGIN
  J := 0;
  FOR I := ArrSize - 1 TO 0
  DO
    BEGIN
      TempArr[J] := Arr[I];
      J := J + 1
    END;
  MirrorArr := TempArr
END;

BEGIN
  FillArr(Arr, ArrSize);
  WRITELN(SumOfEvenIndexAndOddNum(Arr, ArrSize));
  ReturnArr(MirrorArr(Arr, ArrSize), ArrSize);
  READLN
END.                          
