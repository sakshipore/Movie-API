import 'package:movie_api/model/genres.dart';
import 'package:movie_api/model/production_comapnies.dart';

class Details {
  final int id;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String tagline;
  final List<ProductionCompanies> productionCompanies;
  final List<Genres> genres;

  Details({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.tagline,
    required this.productionCompanies,
    required this.genres,
  });

  Details copyWith({
    int? id,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? tagline,
    List<ProductionCompanies>? productionCompanies,
    List<Genres>? genres,
  }) {
    return Details(
      id: id ?? this.id,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      tagline: tagline ?? this.tagline,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      genres: genres ?? this.genres,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'tagline': tagline,
      'production_companies': productionCompanies,
      'genres': genres,
    };
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      id: map['id'] ?? 0, 
      originalTitle: map['original_title'] ?? "", 
      overview: map['overview'] ?? "", 
      posterPath: map['poster_path'] ?? "", 
      tagline: map['tagline'] ?? "", 
      productionCompanies: (map['production_companies'] as List<dynamic>).map((item) => ProductionCompanies.fromMap(item)).toList(),
      genres:(map['genres'] as List<dynamic>).map((item) => Genres.fromMap(item)).toList(),

    );
  }
}
