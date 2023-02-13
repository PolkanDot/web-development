function determiningOfType(digit) {
  let prime;
  for (let i = 2; i <= digit; i++) {
    prime = true;
    for (let j = 2; j < i; j++) {
      if (i % j == 0) {
        prime = false;
        break;
      }
    }
  }
  if (prime) {
    console.log('Результат:', digit, 'is prime number');
  } else {
    console.log('Результат:', digit, 'is not prime number');
  }
}

function isPrimeNumber(content) {
  let output = '';
  switch (typeof content) {
    case 'number':
      determiningOfType(content);
      break;
    case 'object':   
      if (content instanceof Array) {
        for (let i = 0; i < content.length; i++) {
          determiningOfType(content[i]); 
        }  
      } else {
        output = 'Передан обьект, но не массив';
      }
      break;
    default:
      output = 'Некорректные входные данные';
      break;
    } 
  if (output != '') {
    console.log(output);
  }   
}

function func(a) {
  let b = a + a;
  return(b + a);
} 

console.log('Введите: isPrimeNumber(<значение>)');