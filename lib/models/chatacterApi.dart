import 'dart:async';
import 'dart:convert';

import 'package:taller/models/characterModel.dart';
import 'package:http/http.dart' as http;

class ApiCharacter {
  // List<Character> characters;
  //https://rickandmortyapi.com/api
  Future<Character> fetchCharacter(String id) async {
    final response = await http.get(
        Uri.https('rickandmortyapi.com', 'api/character/' + id.toString()));

    if (response.statusCode == 200) {
      // characters =
      //  Character.fromJson(jsonDecode(response.body)) as List<Character>;
      // print(characters);
      return Character.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
