function WhichType(Digit) {
  let Identifier;
  for (let i = 2; i <= Digit; i++) {
    Identifier = true;
    for (let j = 2; j < i; j++) {
      if (i % j == 0) {
        Identifier = false;
        break;
      }
    }
  }
  if (Identifier) {
    console.log('Результат:', Digit, 'is prime number');
  } else {
    console.log('Результат:', Digit, 'is not prime number');
  }
}

function isPrimeNumber(Сontent) {
  switch (typeof Сontent) {
    case 'number':
      WhichType(Сontent);
      break;
    case 'object':   
      if (Сontent instanceof Array) {
        for (let i = 0; i < Сontent.length; i++) {
          WhichType(Сontent[i]); 
        }
        return console.log('Успех');
      } else {
        return console.log('Передан обьект, но не массив');
      }
    default:
      return console.log('Некорректные входные данные');
    }
}

console.log('Введите: isPrimeNumber(<значение>)');