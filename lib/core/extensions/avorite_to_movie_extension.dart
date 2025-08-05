import '../../Features/Favorite/data/models/favorite_movie_model.dart';
import '../models/movie_model.dart';

extension FavoriteToMovie on FavoriteMovieModel {
  MovieModel toMovieModel() {
    return MovieModel(
      id: movieId,
      title: title,
      posterPath: posterPath,
      voteAverage: voteAverage,
      voteCount: voteCount,
      releaseDate: releaseDate,
      language: language,
      overview: overview,
    );
  }
}
