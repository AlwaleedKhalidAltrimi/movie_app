import 'package:flutter/material.dart';
import '../../../../core/models/movie_model.dart';
import '../../../../core/services/api_service.dart';

class HomeMoviesProvider extends ChangeNotifier {
  List<MovieModel> nowShowingMovies = [];
  List<MovieModel> upComingApiMovies = [];
  List<MovieModel> popularMovies = [];

  bool isNowShowingLoading = true;
  bool isUpComingLoading = true;
  bool isPopularLoading = true;

  String? nowShowingError;
  String? upComingError;
  String? popularError;

  HomeMoviesProvider() {
    fetchNowShowingMovies();
    fetchUpComingApiMovies();
    fetchPopularMovies();
  }

  Future<void> fetchNowShowingMovies() async {
    isNowShowingLoading = true;
    nowShowingError = null;
    notifyListeners();

    try {
      nowShowingMovies = await ApiService.getNowShowingMovies();
    } catch (e) {
      nowShowingError = 'Something went wrong. Try again.';
      debugPrint('NowShowing Error: $e');
    } finally {
      isNowShowingLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchUpComingApiMovies() async {
    isUpComingLoading = true;
    upComingError = null;
    notifyListeners();

    try {
      upComingApiMovies = await ApiService.getUpComingApiMovies();
    } catch (e) {
      upComingError = 'Something went wrong. Try again.';
      debugPrint('UpComing Error: $e');
    } finally {
      isUpComingLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchPopularMovies() async {
    isPopularLoading = true;
    popularError = null;
    notifyListeners();

    try {
      popularMovies = await ApiService.getPopularMovies();
    } catch (e) {
      popularError = 'Something went wrong. Try again.';
      debugPrint('Popular Error: $e');
    } finally {
      isPopularLoading = false;
      notifyListeners();
    }
  }
}
