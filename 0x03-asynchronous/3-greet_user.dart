import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String response = await fetchUserData();
    final data = jsonDecode(response);

    return 'Hello ${data["username"]}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool logged = await checkCredentials();

    print('There is a user: $logged');

    return (logged ? await greetUser() : 'Wrong credentials');
  } catch (e) {
    return 'error caught: $e';
  }
}
