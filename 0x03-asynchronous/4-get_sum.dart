import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  double totalPrice = 0;

  try {
    String userResponse = await fetchUserData();
    final userData = jsonDecode(userResponse);
    String userOrderResponse = await fetchUserOrders(userData['id']);
    final userOrders = jsonDecode(userOrderResponse);

    for (String order in userOrders) {
      String productResponse = await fetchProductPrice(order);
      final productPrice = jsonDecode(productResponse);

      totalPrice += productPrice;
    }
  } catch (e) {
    return -1;
  }

  return totalPrice;
}
