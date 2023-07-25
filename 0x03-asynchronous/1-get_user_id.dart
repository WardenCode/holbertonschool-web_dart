import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String response = await fetchUserData();
  final data = jsonDecode(response);

  return data['id'];
}
