import '../helper/api_helper.dart';
import '../models/movie_model.dart';

class ApiService {
  static Future<List<MovieModel>> getNowShowingMovies() =>
      ApiHelper.fetchMovies('movie/now_playing');

  static Future<List<MovieModel>> getUpComingApiMovies() =>
      ApiHelper.fetchMovies('movie/upcoming');

  static Future<List<MovieModel>> getPopularMovies() =>
      ApiHelper.fetchMovies('movie/popular');

  static Future<List<MovieModel>> searchMovies(String query) =>
      ApiHelper.fetchMovies('search/movie', params: {'query': query});

  static Future<List<MovieModel>> fetchMoviesByCategory(int genreId) =>
      ApiHelper.fetchMovies('discover/movie',
          params: {'with_genres': genreId.toString()});

  static Future<String> getMovieTrailer(int movieId) =>
      ApiHelper.fetchTrailer(movieId);
}









// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/movie_model.dart';

// class ApiService {
//   static const _apiKey = 'e68b6a4f05cf5c4ff4ff7467f5e9daed';
//   static const _baseUrl = 'https://api.themoviedb.org/3';

// // for nowShowing movies
//   static Future<List<MovieModel>> getNowShowingMovies() async {
//     final response = await http.get(
//         // Uri.parse('$_baseUrl/movie/now_playing?api_key=$_apiKey&language=ar'));
//         Uri.parse('$_baseUrl/movie/now_playing?api_key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];
//       List<MovieModel> movieList =
//           data.map((movie) => MovieModel.fromJson(movie)).toList();
//       return movieList;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

// // for up coming movies
//   static Future<List<MovieModel>> getUpComingApiMovies() async {
//     final response = await http.get(
//         // Uri.parse('$_baseUrl/movie/upcoming?api_key=$_apiKey&language=ar'));
//         Uri.parse('$_baseUrl/movie/upcoming?api_key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];
//       List<MovieModel> movieList =
//           data.map((movie) => MovieModel.fromJson(movie)).toList();
//       return movieList;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

//   // for popular movies
//   static Future<List<MovieModel>> getPopularMovies() async {
//     final response = await http
//         // .get(Uri.parse('$_baseUrl/movie/popular?api_key=$_apiKey&language=ar'));
//         .get(Uri.parse('$_baseUrl/movie/popular?api_key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];
//       List<MovieModel> movieList =
//           data.map((movie) => MovieModel.fromJson(movie)).toList();
//       return movieList;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

//   // for Search movies
//   static Future<List<MovieModel>> searchMovies(String query) async {
//     final response = await http.get(Uri.parse(
//         // '$_baseUrl/search/movie?api_key=$_apiKey&query=$query&language=ar'));
//         '$_baseUrl/search/movie?api_key=$_apiKey&query=$query'));
//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];
//       List<MovieModel> movieList =
//           data.map((movie) => MovieModel.fromJson(movie)).toList();
//       return movieList;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

//   // for fetching movies by category (genre)
//   static Future<List<MovieModel>> fetchMoviesByCategory(int genreId) async {
//     final response = await http.get(Uri.parse(
//         // '$_baseUrl/discover/movie?api_key=$_apiKey&with_genres=$genreId&language=ar'));
//         '$_baseUrl/discover/movie?api_key=$_apiKey&with_genres=$genreId'));
//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];
//       List<MovieModel> movieList =
//           data.map((movie) => MovieModel.fromJson(movie)).toList();
//       return movieList;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

//   //show Trailer for movie
//   static Future<String> getMovieTrailer(int movieId) async {
//     final response = await http
//         .get(Uri.parse('$_baseUrl/movie/$movieId/videos?api_key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body)['results'];

//       final trailer = data.firstWhere(
//           (video) => video['type'] == 'Trailer' && video['site'] == 'YouTube',
//           orElse: () => null);

//       if (trailer != null) {
//         return trailer['key'];
//       } else {
//         throw Exception('Trailer not found');
//       }
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }
// }
