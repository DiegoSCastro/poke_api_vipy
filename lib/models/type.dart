class Type {
  String name;
  String url;
  Type({
    required this.name,
    required this.url,
  });
  factory Type.fromJson(Map<String, dynamic> map) {
    return Type(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;

    return data;
  }
}
