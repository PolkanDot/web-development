PROGRAM SarahRevere(INPUT, OUTPUT);
USES DOS;
VAR
  InputData, Lanterns: STRING;
  NumberOfFirstSymbol: INTEGER;
  Way: CHAR;
BEGIN {SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  InputData := GetEnv('QUERY_STRING');
  Lanterns := 'lanterns=';
  NumberOfFirstSymbol := POS(Lanterns, InputData);
  IF NumberOfFirstSymbol <> 0
  THEN
    BEGIN
      Way := InputData[NumberOfFirstSymbol + 9];
      IF (Way >= '1') AND (Way <= '3')
      THEN
        BEGIN
          WRITE(' The British are coming by ');
          IF Way = '1'
          THEN
            WRITELN('land');
          IF Way = '2'
          THEN
            WRITELN('sea');
          IF Way = '3'
          THEN
            WRITELN('air')
        END
      ELSE
        WRITELN('We don''t know')
    END
  ELSE
    WRITELN('We don''t know')
END. {SarahRevere}
