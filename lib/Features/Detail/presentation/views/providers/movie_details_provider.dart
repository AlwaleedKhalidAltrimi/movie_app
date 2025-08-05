import 'package:flutter/material.dart';
import '../../../../../core/services/api_service.dart';

class MovieDetailsProvider extends ChangeNotifier {
  String? videoKey;
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchTrailer(int movieId) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      videoKey = await ApiService.getMovieTrailer(movieId);
    } catch (e) {
      errorMessage = 'Something went wrong. Please try again later.';
      debugPrint('Provider Error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
