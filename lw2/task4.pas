PROGRAM Parameters(INPUT, OUTPUT);
USES DOS;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  InputData: STRING;
  FirstSymbol, LastSymbol: INTEGER;
BEGIN
  InputData := GetEnv('QUERY_STRING');
  FirstSymbol := POS(Key, InputData);
  IF FirstSymbol <> 0
  THEN
    BEGIN
      DELETE(InputData, 1, FirstSymbol + LENGTH(Key));
      LastSymbol := POS('&', InputData);
      IF LastSymbol <> 0
      THEN
        DELETE(InputData, LastSymbol, LENGTH(InputData) - (LastSymbol-1));
      END
    ELSE
      InputData := 'Not found';
  GetQueryStringParameter := InputData
END;
BEGIN {WorkWithQueryString}
  WRITELN('Content-type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
