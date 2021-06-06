import 'stats.dart';
import 'types.dart';

class Pokemon {
  int id;
  String name;
  List<Stats> stats;
  List<Types> types;
  int height;
  int weight;

  Pokemon({
    required this.id,
    required this.name,
    required this.stats,
    required this.types,
    required this.height,
    required this.weight,
  });

  factory Pokemon.fromJson(Map<String, dynamic> map) {
    return Pokemon(
        id: map['id'] ?? 0,
        name: map['name'] ?? '',
        stats: List<Stats>.from(map['stats'].map((x) => Stats.fromJson(x))),
        types: List<Types>.from(map['types'].map((x) => Types.fromJson(x))),
        height: map['height'] ?? 0,
        weight: map['weight'] ?? 0);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['stats'] = this.stats.map((v) => v.toJson()).toList();
    data['types'] = this.types.map((v) => v.toJson()).toList();
    data['height'] = this.height;
    data['weight'] = this.weight;

    return data;
  }
}
