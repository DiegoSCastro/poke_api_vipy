import 'type.dart';

class Types {
  int slot;
  Type type;

  Types({
    required this.slot,
    required this.type,
  });

  factory Types.fromJson(Map<String, dynamic> map) {
    return Types(
      slot: map['slot'] ?? 0,
      type: Type.fromJson(map['type']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['slot'] = this.slot;
    data['type'] = this.type;

    return data;
  }
}
