import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchJsonData() async {
  var response = await http.get(Uri.parse('https://dummyjson.com/products'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load JSON data');
  }
}
