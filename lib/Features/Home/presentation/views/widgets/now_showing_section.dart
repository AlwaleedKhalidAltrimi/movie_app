import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../providers/home_movies_provider.dart';
import 'featured_now_showing_list_view.dart';

class NowShowingSection extends StatelessWidget {
  const NowShowingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeMoviesProvider>(
      builder: (context, homeMoviesProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "   Now Showing",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            // Now Showing
            if (homeMoviesProvider.isNowShowingLoading)
              const Center(child: CenteredCircularLoader())
            else if (homeMoviesProvider.nowShowingError != null)
              Text(homeMoviesProvider.nowShowingError!)
            else
              FeaturedNowShowingListView(
                movies: homeMoviesProvider.nowShowingMovies,
              ),
          ],
        );
      },
    );
  }
}
