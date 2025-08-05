import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Features/Favorite/data/models/favorite_movie_model.dart';
import '../../Features/Favorite/presentation/providers/favorite_provider.dart';
import '../models/movie_model.dart';
import 'custom_movie_image.dart';
import 'movie_rating.dart';

class MovieDetailsContent extends StatefulWidget {
  const MovieDetailsContent({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  State<MovieDetailsContent> createState() => _MovieDetailsContentState();
}

class _MovieDetailsContentState extends State<MovieDetailsContent> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    // تحقق من إذا الفيلم مضاف للمفضلة
    final provider = Provider.of<FavoriteProvider>(context, listen: false);
    isFavorite = provider.isFavorite(widget.movieModel.id);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // اسم الفيلم + زر القلب
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.movieModel.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.redAccent,
                  size: 30,
                ),
                onPressed: () {
                  final provider =
                      Provider.of<FavoriteProvider>(context, listen: false);

                  setState(() {
                    isFavorite = !isFavorite;
                  });

                  if (isFavorite) {
                    provider.addFavorite(
                      FavoriteMovieModel(
                        movieId: widget.movieModel.id,
                        title: widget.movieModel.title,
                        posterPath: widget.movieModel.posterPath,
                        voteAverage: widget.movieModel.voteAverage,
                        releaseDate: widget.movieModel.releaseDate,
                        language: widget.movieModel.language,
                        voteCount: widget.movieModel.voteCount,
                        overview: widget.movieModel.overview,
                      ),
                    );
                  } else {
                    provider.removeFavorite(widget.movieModel.id);
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          // الصورة + معلومات أخرى
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // صورة الفيلم
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 120,
                  height: 180,
                  child: CustomMovieImage(
                    imageUrl: widget.movieModel.posterPath,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // التفاصيل
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MovieRating(
                      rating: widget.movieModel.voteAverage,
                      count: widget.movieModel.voteCount,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Language: ${widget.movieModel.language}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Release: ${widget.movieModel.releaseDate}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // نظرة عامة
          const Text(
            'Overview',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            widget.movieModel.overview,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
