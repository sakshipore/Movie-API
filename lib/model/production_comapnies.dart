class ProductionCompanies {
  final int id;
  final String logoPath;
  final String name;
  final String originalCountry;

  ProductionCompanies({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originalCountry,
  });

  ProductionCompanies copyWith({
    int? id,
    String? logoPath,
    String? name,
    String? originalCountry,
  }) {
    return ProductionCompanies(
      id: id ?? this.id,
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      originalCountry: originalCountry ?? this.originalCountry,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logo_path': logoPath,
      'name': name,
      'original_country': originalCountry,
    };
  }

  factory ProductionCompanies.fromMap(Map<String, dynamic> map) {
    return ProductionCompanies(
      id: map['id'] ?? 0, 
      logoPath: map['logo_path'] ?? "", 
      name: map['name'] ?? "", 
      originalCountry: map['original_country'] ?? "",
    );
  }
}
