import 'package:flutter/material.dart';
import '../../../../../core/models/movie_model.dart';
import '../../../../../core/widgets/custom_movie_image.dart';
import '../../../../Detail/presentation/views/movie_details_view.dart';

class FeaturedPopularListView extends StatelessWidget {
  final List<MovieModel> movies;

  const FeaturedPopularListView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MovieDetailsView.id,
                  arguments: movie,
                );
              },
              child: CustomMovieImage(
                imageUrl: movie.posterPath,
              ),
            ),
          );
        },
      ),
    );
  }
}
