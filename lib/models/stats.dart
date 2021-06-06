import 'package:poke_api_vipy/models/stat.dart';

class Stats {
  int baseStat;
  int effort;
  Stat stat;

  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory Stats.fromJson(Map<String, dynamic> map) {
    return Stats(
        baseStat: map['base_stat'] ?? 0,
        effort: map['effort'] ?? 0,
        stat: Stat.fromJson(map['stat']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['base_stat'] = this.baseStat;
    data['effort'] = this.effort;
    data['stat'] = this.stat;

    return data;
  }
}
