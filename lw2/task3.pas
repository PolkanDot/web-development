PROGRAM Greeting(INPUT, OUTPUT);
USES DOS;
VAR
  InputData, UserName: STRING;
  NumOfFSimb, EndOfName: INTEGER;
BEGIN { Greeting }
  WRITELN('Content-type: text/plain');
  WRITELN;
  InputData := GetEnv('QUERY_STRING');
  UserName := 'name=';
  NumOfFSimb := POS(UserName, InputData);
  EndOfName := POS('&', InputData);
  IF NumOfFSimb = 0
  THEN
    WRITELN('Hello Anonimous!')
  ELSE
    BEGIN
      WRITE('Hello dear, ');
      IF EndOfName = 0
      THEN
        UserName := COPY(InputData, NumOfFSimb + 5, Length(InputData) - NumOfFSimb)
      ELSE
        UserName := COPY(InputData, NumOfFSimb + 5, EndOfName - (NumOfFSimb + 5));
      WRITELN(UserName,'!')
    END
END. { Greeting }