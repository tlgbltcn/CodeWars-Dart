

main() {
  print(evenOrOdd(5));
}

String evenOrOdd(int number) {
  if (number % 2 == 0) return "Even";
  else return "Odd";
}

String evenOrOdd_(int number) => number.isEven ? 'Even' : 'Odd';

String evenOrOdd__(int n) => n % 2 == 0 ? 'Even' : 'Odd';

String evenOrOdd___(int number) => number%2!=0?"Odd":"Even";

String evenOrOdd____( int number ) {
  return ['Even', 'Odd'][number % 2];
}

String evenOrOdd_____(int number)=>const["Even","Odd"][number&1];

