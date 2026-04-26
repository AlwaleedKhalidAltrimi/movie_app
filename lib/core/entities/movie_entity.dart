class MovieEntity {
  final int movieId;
  final String name;
  final String image;
  final String description;
  final double rating;
  final int ratingCount;
  final String releaseDate;
  final String language;

  MovieEntity({
    required this.movieId,
    required this.name,
    required this.image,
    required this.description,
    required this.rating,
    required this.ratingCount,
    required this.releaseDate,
    required this.language,
  });

  String formatRating() {
    return rating.toStringAsFixed(1);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MovieEntity && other.movieId == movieId;
  }

  @override
  int get hashCode => movieId.hashCode;
}
