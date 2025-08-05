import 'package:flutter/material.dart';
import '../../../../Category/presentation/views/widgets/categories_list_view.dart';
import '../../../../Category/presentation/views/widgets/category_view_data.dart';
import 'now_showing_section.dart';
import 'popular_movies_section.dart';
import 'upcoming_movies_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          CategoriesListView(categories: categories),
          const SizedBox(height: 20),
          const NowShowingSection(),
          const SizedBox(height: 25),
          const UpComingMoviesSection(),
          const SizedBox(height: 25),
          const PopularMoviesSection(),
        ],
      ),
    );
  }
}
