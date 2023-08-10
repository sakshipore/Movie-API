class Movie {
  final int id;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String releaseDate;

  Movie({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
  });

  Movie copyWith({
    int? id,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? releaseDate,
  }) {
    return Movie(
      id: id ?? this.id,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'release_date': releaseDate,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'] ?? 0, 
      originalTitle: map['original_title'] ?? "", 
      overview: map['overview'] ?? "", 
      posterPath: map['poster_path'] ?? "", 
      releaseDate: map['release_date'] ?? "",
    );
  }
}
