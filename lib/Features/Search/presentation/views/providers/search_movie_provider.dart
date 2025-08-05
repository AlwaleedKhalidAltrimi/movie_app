import 'package:flutter/material.dart';
import '../../../../../core/models/movie_model.dart';
import '../../../../../core/services/api_service.dart';

class SearchMovieProvider extends ChangeNotifier {
  List<MovieModel> searchedMovies = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchSearchedMovies(String query) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      searchedMovies = await ApiService.searchMovies(query);
    } catch (e) {
      errorMessage = 'Something went wrong. Please try again later.';
      debugPrint('Provider Error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
