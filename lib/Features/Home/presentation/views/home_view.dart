import 'package:flutter/material.dart';
import '../../../Favorite/presentation/views/favorite_movies_view.dart';
import '../../../Search/presentation/views/search_view.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, SearchView.id);
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, FavoriteMoviesView.id);
            },
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
