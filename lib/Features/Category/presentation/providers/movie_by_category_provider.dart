import 'package:flutter/material.dart';
import '../../../../core/models/movie_model.dart';
import '../../../../core/services/api_service.dart';

class MovieByCategoryProvider extends ChangeNotifier {
  List<MovieModel> categoryMovies = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchMoviesByCategory(int genreId) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      categoryMovies = await ApiService.fetchMoviesByCategory(genreId);
    } catch (e) {
      errorMessage = 'Something went wrong. Please try again later.';
      debugPrint('Provider Error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
