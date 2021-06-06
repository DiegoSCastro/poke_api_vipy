// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_grid_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonGridController on _PokemonGridController, Store {
  final _$loadingAtom = Atom(name: '_PokemonGridController.loading');

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

  final _$apiResultAtom = Atom(name: '_PokemonGridController.apiResult');

  @override
  ApiResult? get apiResult {
    _$apiResultAtom.reportRead();
    return super.apiResult;
  }

  @override
  set apiResult(ApiResult? value) {
    _$apiResultAtom.reportWrite(value, super.apiResult, () {
      super.apiResult = value;
    });
  }

  final _$getApiResultAsyncAction =
      AsyncAction('_PokemonGridController.getApiResult');

  @override
  Future<void> getApiResult() {
    return _$getApiResultAsyncAction.run(() => super.getApiResult());
  }

  final _$_PokemonGridControllerActionController =
      ActionController(name: '_PokemonGridController');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$_PokemonGridControllerActionController.startAction(
        name: '_PokemonGridController.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_PokemonGridControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setApiResult(ApiResult value) {
    final _$actionInfo = _$_PokemonGridControllerActionController.startAction(
        name: '_PokemonGridController.setApiResult');
    try {
      return super.setApiResult(value);
    } finally {
      _$_PokemonGridControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
apiResult: ${apiResult}
    ''';
  }
}
