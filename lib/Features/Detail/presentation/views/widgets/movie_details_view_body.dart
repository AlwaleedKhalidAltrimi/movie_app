import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/models/movie_model.dart';
import '../providers/movie_details_provider.dart';
import 'movie_trailer_consumer.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final int movieId;
  final MovieModel movieModel;

  const MovieDetailsViewBody(
      {super.key, required this.movieId, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MovieDetailsProvider()..fetchTrailer(movieId),
      child: MovieTrailerConsumer(movieModel: movieModel),
    );
  }
}
