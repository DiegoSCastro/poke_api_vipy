import 'package:mobx/mobx.dart';
import 'package:poke_api_vipy/models/pokemon.dart';
import 'package:poke_api_vipy/repositories/pokemon_repository.dart';

part 'pokemon_details_controller.g.dart';

class PokemonDetailsController = _PokemonDetailsController
    with _$PokemonDetailsController;

abstract class _PokemonDetailsController with Store {
  _PokemonDetailsController(String pokemonUrl) {
    autorun((_) async {
      if (pokemon == null) getPokemonDetails(pokemonUrl);
    });
  }
  @observable
  bool loading = false;

  @action
  setLoading(bool value) => loading = value;

  @observable
  Pokemon? pokemon;

  @action
  setPokemon(Pokemon value) => pokemon = value;

  @action
  Future<void> getPokemonDetails(String pokemonUrl) async {
    setLoading(true);
    Pokemon response = await PokemonRepository().getPokemon(pokemonUrl);
    await setPokemon(response);

    setLoading(false);
  }
}
