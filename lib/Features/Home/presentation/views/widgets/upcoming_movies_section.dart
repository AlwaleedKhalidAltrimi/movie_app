import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../providers/home_movies_provider.dart';
import 'featured_up_coming_list_view.dart';

class UpComingMoviesSection extends StatelessWidget {
  const UpComingMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeMoviesProvider>(
      builder: (context, homeMoviesProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "   Up Coming Movies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            // Upcoming
            if (homeMoviesProvider.isUpComingLoading)
              const Center(child: CenteredCircularLoader())
            else if (homeMoviesProvider.upComingError != null)
              Text(homeMoviesProvider.upComingError!)
            else
              FeaturedUpComingListView(
                movies: homeMoviesProvider.upComingApiMovies,
              ),
          ],
        );
      },
    );
  }
}
