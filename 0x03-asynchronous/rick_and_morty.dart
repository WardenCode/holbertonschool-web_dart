import "package:http/http.dart" as http;
import 'dart:convert';

String base_url = 'https://rickandmortyapi.com/api';

Future<List<String>> getAllCharacters() async {
  String url = '${base_url}/character';
  List<String> names = [];

  final response = await http.get(Uri.parse(url));
  final data = jsonDecode(response.body);

  for (var character in data['results']) {
    names.add(character['name']);
  }

  return (names);
}

Future printRmCharacters() async {
  try {
    List<String> characters = await getAllCharacters();
    for (String character in characters) {
      print(character);
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
