import 'package:mobx/mobx.dart';
import 'package:poke_api_vipy/models/api_result.dart';
import 'package:poke_api_vipy/models/pokemon_item.dart';
import 'package:poke_api_vipy/repositories/pokemon_repository.dart';

part 'pokemon_grid_controller.g.dart';

class PokemonGridController = _PokemonGridController
    with _$PokemonGridController;

abstract class _PokemonGridController with Store {
  _PokemonGridController() {
    autorun((_) async {
      if (apiResult == null) getApiResult();
    });
  }
  @observable
  bool loading = false;

  @action
  setLoading(bool value) => loading = value;

  ObservableList<PokemonItem> pokemonList = ObservableList<PokemonItem>();

  @observable
  ApiResult? apiResult;

  @action
  setApiResult(ApiResult value) => apiResult = value;

  @action
  Future<void> getApiResult() async {
    setLoading(true);
    var response = await PokemonRepository().getApiResult();
    await setApiResult(response);
    pokemonList.addAll(response.results);
    setLoading(false);
  }

  Future<void> getMorePokemons() async {
    setLoading(true);
    var response = await PokemonRepository().getMorePokemons(apiResult!.next);
    await setApiResult(response);

    pokemonList.addAll(response.results);
    setLoading(false);
  }
}
