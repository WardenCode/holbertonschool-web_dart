void main(List<String> args) {
  int num = int.parse(args[0]);
  String msg = '';

  if (num == 0) {
    msg = "is zero";
  } else if (num > 0) {
    msg = "is positive";
  } else {
    msg = "is negative";
  }

  print('${num} ${msg}');
}
