class Genres {
  final String name;

  Genres({
    required this.name,
  });

  Genres copyWith({
    String? name,
  }) {
    return Genres(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Genres.fromMap(Map<String, dynamic> map) {
    return Genres(
      name: map['name'] ?? "",
    );
  }
}
