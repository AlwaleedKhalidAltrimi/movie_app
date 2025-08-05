import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie_model.dart';

class ApiHelper {
  static const _apiKey = 'e68b6a4f05cf5c4ff4ff7467f5e9daed';
  static const _baseUrl = 'api.themoviedb.org';

  // Fetch movies from a specific endpoint with optional parameters
  static Future<List<MovieModel>> fetchMovies(String endpoint,
      {Map<String, String>? params}) async {
    final queryParameters = {
      'api_key': _apiKey,
    };

    if (params != null) {
      queryParameters.addAll(params);
    }

    final uri = Uri.https(_baseUrl, '/3/$endpoint', queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['results'];
      return data.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw Exception(
          'Failed to load movies. Status code: ${response.statusCode}');
    }
  }

  // Fetch YouTube trailer key for a specific movie
  static Future<String> fetchTrailer(int movieId) async {
    final uri = Uri.https(_baseUrl, '/3/movie/$movieId/videos', {
      'api_key': _apiKey,
    });

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['results'];

      final trailer = data.firstWhere(
        (video) => video['type'] == 'Trailer' && video['site'] == 'YouTube',
        orElse: () => null,
      );

      if (trailer != null) {
        return trailer['key'];
      } else {
        throw Exception('Trailer not found');
      }
    } else {
      throw Exception(
          'Failed to load trailer. Status code: ${response.statusCode}');
    }
  }
}
