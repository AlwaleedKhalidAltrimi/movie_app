import 'package:flutter/material.dart';
import 'widgets/favorite_movies_view_body.dart';

class FavoriteMoviesView extends StatelessWidget {
  const FavoriteMoviesView({super.key});

  static String id = 'FavoriteMoviesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Movies'),
      ),
      body: const FavoriteMoviesViewBody(),
    );
  }
}
