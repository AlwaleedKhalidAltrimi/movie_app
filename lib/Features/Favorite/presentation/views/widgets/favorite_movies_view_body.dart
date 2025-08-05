import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/avorite_to_movie_extension.dart';
import 'package:provider/provider.dart';
import '../../../../../core/widgets/movie_list_view.dart';
import '../../providers/favorite_provider.dart';

class FavoriteMoviesViewBody extends StatelessWidget {
  const FavoriteMoviesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, provider, child) {
        if (provider.favorites.isEmpty) {
          return const Center(child: Text("No favorite movies."));
        } else {
          final movies =
              provider.favorites.map((fav) => fav.toMovieModel()).toList();
          return MovieListView(movies: movies);
        }
      },
    );
  }
}
