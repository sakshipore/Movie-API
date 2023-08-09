class Movie {
  final String image;
  final String id;
  final String title;
  final int rank;
  final String description;
  final int year;

  Movie({
    required this.image,
    required this.id,
    required this.title,
    required this.rank,
    required this.description,
    required this.year,
  });

  Movie copyWith({
    String? image,
    String? id,
    String? title,
    int? rank,
    String? description,
    int? year,
  }) {
    return Movie(
      image: image ?? this.image,
      id: id ?? this.id,
      title: title ?? this.title,
      rank: rank ?? this.rank,
      description: description ?? this.description,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'i': image,
      'id': id,
      'l': title,
      'rank': rank,
      's': description,
      'y': year,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      image: map['i']!=null ? map['i']['imageUrl']:"",
      id: map['id'] ?? "", 
      title: map['l'] ?? "", 
      rank: map['rank'] ?? 0, 
      description: map['s'] ?? "", 
      year: map['y'] ?? 0,
    );
  }
}
