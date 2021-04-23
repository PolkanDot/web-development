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
  IF InputData = 'lanterns=1'
  THEN
    WRITELN(' The British are coming by land ')
  ELSE
    IF InputData = 'lanterns=2'
    THEN
      WRITELN(' The British are coming by sea ')
    ELSE
      IF InputData = 'lanterns=3'
      THEN
        WRITELN(' The British are coming by air ')
      ELSE    
        WRITELN('We don''t know');
END. {SarahRevere}

