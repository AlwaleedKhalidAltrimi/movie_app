import 'package:flutter/material.dart';
import '../../Features/Detail/presentation/views/movie_details_view.dart';
import 'custom_movie_image.dart';
import 'movie_rating.dart';
import '../models/movie_model.dart';

class MovieListViewItem extends StatelessWidget {
  const MovieListViewItem({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          MovieDetailsView.id,
          arguments: movieModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomMovieImage(imageUrl: movieModel.posterPath),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      movieModel.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    movieModel.language,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        movieModel.releaseDate,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const Spacer(),
                      MovieRating(
                        rating: movieModel.voteAverage,
                        count: movieModel.voteCount,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
