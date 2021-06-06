import 'pokemon_item.dart';

class ApiResult {
  int count;
  String next;
  String previous;
  List<PokemonItem> results;

  ApiResult({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory ApiResult.fromMap(Map<String, dynamic> map) {
    return ApiResult(
      count: map['count'] ?? '',
      next: map['next'] ?? '',
      previous: map['previous'] ?? '',
      results: List<PokemonItem>.from(
          map['results']?.map((x) => PokemonItem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;

    data['results'] = this.results.map((v) => v.toJson()).toList();

    return data;
  }
}
