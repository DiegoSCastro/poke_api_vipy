class PokemonItem {
  String name;
  String url;

  PokemonItem({
    required this.name,
    required this.url,
  });
  factory PokemonItem.fromJson(Map<String, dynamic> map) {
    return PokemonItem(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
