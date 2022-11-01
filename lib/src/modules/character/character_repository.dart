import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:harry_potter_app/src/models/character_model.dart';

class CharacterRepository {
  final dio = Dio(
    BaseOptions(baseUrl: "https://hp-api.herokuapp.com/api"),
  );

  Future<List<CharacterModel>> getCharacters() async {
    try {
      final response = await dio.get("/characters");

      log(
        response.realUri.toString(),
        name: response.statusCode.toString(),
      );

      final data = List.from(response.data);

      final characters = data
          .map(
            (element) => CharacterModel.fromMap(element),
          )
          .toList();

      return characters;
    } catch (e) {
      rethrow;
    }
  }
}
