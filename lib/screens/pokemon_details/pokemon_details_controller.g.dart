// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonDetailsController on _PokemonDetailsController, Store {
  final _$loadingAtom = Atom(name: '_PokemonDetailsController.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$pokemonAtom = Atom(name: '_PokemonDetailsController.pokemon');

  @override
  Pokemon? get pokemon {
    _$pokemonAtom.reportRead();
    return super.pokemon;
  }

  @override
  set pokemon(Pokemon? value) {
    _$pokemonAtom.reportWrite(value, super.pokemon, () {
      super.pokemon = value;
    });
  }

  final _$getPokemonDetailsAsyncAction =
      AsyncAction('_PokemonDetailsController.getPokemonDetails');

  @override
  Future<void> getPokemonDetails(String pokemonUrl) {
    return _$getPokemonDetailsAsyncAction
        .run(() => super.getPokemonDetails(pokemonUrl));
  }

  final _$_PokemonDetailsControllerActionController =
      ActionController(name: '_PokemonDetailsController');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$_PokemonDetailsControllerActionController
        .startAction(name: '_PokemonDetailsController.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_PokemonDetailsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPokemon(Pokemon value) {
    final _$actionInfo = _$_PokemonDetailsControllerActionController
        .startAction(name: '_PokemonDetailsController.setPokemon');
    try {
      return super.setPokemon(value);
    } finally {
      _$_PokemonDetailsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
pokemon: ${pokemon}
    ''';
  }
}
