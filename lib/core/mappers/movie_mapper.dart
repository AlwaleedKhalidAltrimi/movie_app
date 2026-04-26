import '../models/movie_model.dart';
import '../entities/movie_entity.dart';

const String _imageBaseUrl = 'https://image.tmdb.org/t/p/w500';

extension MovieModelMapper on MovieModel {
  MovieEntity toEntity() {
    return MovieEntity(
      movieId: id,
      name: title ?? '',
      image: posterPath != null ? '$_imageBaseUrl$posterPath' : '',
      description: overview ?? '',
      rating: voteAverage ?? 0.0,
      ratingCount: voteCount ?? 0,
      releaseDate: releaseDate ?? '',
      language: originalLanguage ?? '',
    );
  }
}

extension MovieEntityMapper on MovieEntity {
  MovieModel toModel() {
    return MovieModel(
      id: movieId,
      title: name,
      originalLanguage: language,
      originalTitle: name,
      overview: description,
      posterPath: image.isNotEmpty ? image.replaceAll(_imageBaseUrl, '') : null,
      releaseDate: releaseDate,
      voteAverage: rating,
      voteCount: ratingCount,
    );
  }
}
