int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String msg1 = "Add ${a} + ${b} = ${add(a, b)}";
  String msg2 = "Sub ${a} - ${b} = ${sub(a, b)}";

  return "${msg1}\n${msg2}";
}
