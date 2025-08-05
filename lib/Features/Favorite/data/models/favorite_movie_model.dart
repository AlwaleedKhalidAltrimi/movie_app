// class FavoriteMovieModel {
//   final int movieId;
//   final String title;
//   final String posterPath;
//   final num voteAverage;
//   final int voteCount;
//   final String releaseDate;
//   final String language;

//   FavoriteMovieModel({
//     required this.movieId,
//     required this.voteCount,
//     required this.title,
//     required this.posterPath,
//     required this.voteAverage,
//     required this.releaseDate,
//     required this.language,
//   });

//   factory FavoriteMovieModel.fromMap(Map<String, dynamic> map) {
//     return FavoriteMovieModel(
//       movieId: map['movieId'],
//       title: map['title'] ?? '',
//       posterPath: 'https://image.tmdb.org/t/p/w500${map['poster_path']}?? ' '',
//       voteAverage: (map['vote_average'] ?? 0).toDouble(),
//       voteCount: (map['vote_count'] ?? 0),
//       releaseDate: map['release_date'] ?? '',
//       language: map['original_language'] ?? 'en',
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'movieId': movieId,
//       'title': title,
//       'posterPath': posterPath,
//       'voteAverage': voteAverage,
//       'voteCount': voteCount,
//       'releaseDate': releaseDate,
//       'language': language,
//     };
//   }
// }
class FavoriteMovieModel {
  final int movieId;
  final String title;
  final String posterPath;
  final num voteAverage;
  final int voteCount;
  final String releaseDate;
  final String language;
  final String overview;

  FavoriteMovieModel({
    required this.movieId,
    required this.voteCount,
    required this.title,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
    required this.language,
    required this.overview,
  });

  factory FavoriteMovieModel.fromMap(Map<String, dynamic> map) {
    return FavoriteMovieModel(
      movieId: map['movieId'],
      title: map['title'] ?? '',
      posterPath: map['posterPath'] ?? '',
      voteAverage: (map['voteAverage'] ?? 0).toDouble(),
      voteCount: (map['voteCount'] ?? 0),
      releaseDate: map['releaseDate'] ?? '',
      language: map['language'] ?? 'en',
      overview: map['overview'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'movieId': movieId,
      'title': title,
      'posterPath': posterPath,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'releaseDate': releaseDate,
      'language': language,
      'overview': overview,
    };
  }
}
