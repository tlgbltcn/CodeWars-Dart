import 'dart:math';


main() {
  List<int> mList = new List<int>();
  Random rnd = new Random();
  for(var i=0; i<10; i++){
    mList.add(rnd.nextInt(10));
  }
  print(squareSum(mList));
}

int squareSum(List numbers) {
  var num = 0;
  numbers.forEach((element) => num += element * element);
  return num;
}

int squareSum_(List xs) => xs.fold(0, (a, b) => a + b*b);


