function calc(expression) {
	 expression = expression.split(' ').join('');

	 let operation = expression[0];
  let firstDigit = Number( expression[1] ) // на этом этапе можно выводить ошибки
  let secondDigit = Number( expression[2] )

  switch (operation) {

    case '+':
      result = firstDigit + secondDigit;
      break;

    case '-':
      result = firstDigit - secondDigit;
      break;

    case '*':
      result = firstDigit * secondDigit;
      break;

    case '/':
      result = firstDigit / secondDigit;
      break;
  }    
  return console.log(result);
} 

console.log('Введите: calc(<оператор> <первое число> <второе число>)');