import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int movieId;
  final String name;
  final String image;
  final String description;
  final double rating;
  final int ratingCount;
  final String releaseDate;
  final String language;

  const MovieEntity({
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
  List<Object?> get props => [
        movieId,
        name,
        image,
        description,
        rating,
        ratingCount,
        releaseDate,
        language,
      ];
}
