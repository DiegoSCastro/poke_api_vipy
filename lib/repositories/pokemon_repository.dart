import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:poke_api_vipy/models/api_result.dart';
import 'package:poke_api_vipy/models/pokemon.dart';

class PokemonRepository {
  static const baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  Future<ApiResult> getApiResult() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));

      var result = ApiResult.fromMap(json.decode(response.body));

      return result;
    } catch (e) {
      return Future.error('Falha ao carregar pokemons');
    }
  }

  Future<ApiResult> getMorePokemons(String nextUrl) async {
    try {
      var response = await http.get(Uri.parse(nextUrl));

      var result = ApiResult.fromMap(json.decode(response.body));

      return result;
    } catch (e) {
      return Future.error('Falha ao carregar pokemons');
    }
  }

  Future<Pokemon> getPokemon(String pokemonUrl) async {
    try {
      var response = await http.get(Uri.parse(pokemonUrl));

      var pokemon = Pokemon.fromJson(json.decode(response.body));

      return pokemon;
    } catch (e) {
      return Future.error('Falha ao carregar mais pokemons');
    }
  }
}
