import 'package:flutter/material.dart';
import '../../../../core/models/movie_model.dart';
import 'widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  static String id = 'MovieDetailsView';

  @override
  Widget build(BuildContext context) {
    final movieModel = ModalRoute.of(context)!.settings.arguments as MovieModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body:
          MovieDetailsViewBody(movieId: movieModel.id, movieModel: movieModel),
    );
  }
}
