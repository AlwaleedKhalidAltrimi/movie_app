import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../providers/home_movies_provider.dart';
import 'featured_popular_list_view.dart';

class PopularMoviesSection extends StatelessWidget {
  const PopularMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeMoviesProvider>(
      builder: (context, homeMoviesProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "   Popular Movies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            // Popular
            if (homeMoviesProvider.isPopularLoading)
              const Center(child: CenteredCircularLoader())
            else if (homeMoviesProvider.popularError != null)
              Text(homeMoviesProvider.popularError!)
            else
              FeaturedPopularListView(
                movies: homeMoviesProvider.popularMovies,
              ),
          ],
        );
      },
    );
  }
}
