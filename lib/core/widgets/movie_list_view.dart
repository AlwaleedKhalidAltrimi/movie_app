import 'package:flutter/material.dart';
import '../../../../../core/models/movie_model.dart';
import 'movie_list_view_item.dart';

class MovieListView extends StatelessWidget {
  final List<MovieModel> movies;
  const MovieListView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: MovieListViewItem(
            movieModel: movie,
          ),
        );
      },
    );
  }
}
