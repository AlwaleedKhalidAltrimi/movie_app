import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/movie_by_category_provider.dart';
import 'category_movies_consumer.dart';

class CategoryViewBody extends StatelessWidget {
  final int genreId;
  const CategoryViewBody({super.key, required this.genreId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MovieByCategoryProvider()..fetchMoviesByCategory(genreId),
      child: const CategoryMoviesConsumer(),
    );
  }
}
