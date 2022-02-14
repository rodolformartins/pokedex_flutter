import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

class ApiMethods extends ChangeNotifier {
  late final Dio _dio;

  ApiMethods() {
    final BaseOptions options =
        BaseOptions(baseUrl: 'https://pokeapi.co/api/v2/pokemon');
    _dio = Dio(options);
  }

  Future<Response> searchPokemon(int pokemonNumber) async {
    final String path = "/$pokemonNumber";

    final response = await _dio.request(path,
        options: Options(contentType: "application/json", method: "GET"));

    print(response.data['name']);
    return response;
  }
}
