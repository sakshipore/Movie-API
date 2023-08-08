class MovieImage {
  final String imageUrl;

  MovieImage({
    required this.imageUrl,
  });

  MovieImage copyWith({
    String? imageUrl,
  }) {
    return MovieImage(
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
    };
  }

  factory MovieImage.fromMap(Map<String, dynamic> map) {
    return MovieImage(
      imageUrl: map['imageUrl'] ?? "",
    );
  }
}
