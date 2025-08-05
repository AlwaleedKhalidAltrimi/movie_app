import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/search_movie_provider.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static String id = 'SearchView';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchMovieProvider(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Search For Movies")),
        body: const SearchViewBody(),
      ),
    );
  }
}
