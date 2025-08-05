import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../providers/movie_by_category_provider.dart';
import '../../../../../core/widgets/movie_list_view.dart';

class CategoryMoviesConsumer extends StatelessWidget {
  const CategoryMoviesConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieByCategoryProvider>(
      builder: (context, provider, _) {
        if (provider.isLoading) {
          return const Center(child: CenteredCircularLoader());
        } else if (provider.errorMessage != null) {
          return Center(child: Text(provider.errorMessage!));
        } else if (provider.categoryMovies.isEmpty) {
          return const Center(
              child: Text('There are no movies in this category.'));
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: MovieListView(movies: provider.categoryMovies),
          );
        }
      },
    );
  }
}
