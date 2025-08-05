import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../../../../core/widgets/movie_list_view_item.dart';
import '../providers/search_movie_provider.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchMovieProvider>(
      builder: (context, searchProvider, child) {
        if (searchProvider.isLoading) {
          return const Center(child: CenteredCircularLoader());
        } else if (searchProvider.errorMessage != null) {
          return Center(child: Text(searchProvider.errorMessage!));
        } else if (searchProvider.searchedMovies.isEmpty) {
          return const Center(child: Text('No movies found with this name.'));
        } else {
          return ListView.builder(
            itemCount: searchProvider.searchedMovies.length,
            itemBuilder: (context, index) {
              final movie = searchProvider.searchedMovies[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: MovieListViewItem(movieModel: movie),
              );
            },
          );
        }
      },
    );
  }
}
