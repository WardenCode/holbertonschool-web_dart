double get_fahrenheit(double celcius) {
  return double.parse((((celcius * 9) / 5) + 32).toStringAsFixed(2));
}

List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map(get_fahrenheit).toList();
}
