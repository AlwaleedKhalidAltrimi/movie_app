import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/models/movie_model.dart';
import '../../../../../core/widgets/centered_circular_loader.dart';
import '../../../../../core/widgets/movie_details_content.dart';
import '../../../../../core/widgets/youtube_player_widget.dart';
import '../providers/movie_details_provider.dart';

class MovieTrailerConsumer extends StatelessWidget {
  final MovieModel movieModel;

  const MovieTrailerConsumer({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieDetailsProvider>(
      builder: (context, provider, _) {
        if (provider.isLoading) {
          return const Center(child: CenteredCircularLoader());
        } else if (provider.errorMessage != null) {
          return Center(child: Text(provider.errorMessage!));
        } else {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (provider.videoKey != null)
                  YoutubePlayerWidget(videoKey: provider.videoKey!)
                else
                  const Center(child: Text('No trailer found.')),
                MovieDetailsContent(movieModel: movieModel),
              ],
            ),
          );
        }
      },
    );
  }
}
