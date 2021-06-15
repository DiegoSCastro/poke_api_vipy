import 'package:mobx/mobx.dart';

import '../../models/pokemon.dart';
import '../../repositories/pokemon_repository.dart';

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
  bool setLoading(bool value) => loading = value;

  @observable
  Pokemon? pokemon;

  @action
  Pokemon setPokemon(Pokemon value) => pokemon = value;

  @action
  Future<void> getPokemonDetails(String pokemonUrl) async {
    setLoading(true);
    var response = await PokemonRepository().getPokemon(pokemonUrl);
    await setPokemon(response);

    setLoading(false);
  }
}
