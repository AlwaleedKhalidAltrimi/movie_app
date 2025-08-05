class MovieModel {
  final int id;
  final String title;
  final String posterPath;
  final String overview;
  final num voteAverage;
  final int voteCount;
  final String releaseDate;
  final String language;

  MovieModel({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.releaseDate,
    required this.language,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'] ?? '',
      posterPath: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
      overview: json['overview'] ?? '',
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      voteCount: (json['vote_count'] ?? 0),
      releaseDate: json['release_date'] ?? '',
      language: json['original_language'] ?? 'en',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'posterPath': posterPath,
      'overview': overview,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'releaseDate': releaseDate,
      'language': language,
    };
  }

  String formatNumber(double number) {
    return number.toStringAsFixed(1); // returns as string with 1 decimal
  }
}
