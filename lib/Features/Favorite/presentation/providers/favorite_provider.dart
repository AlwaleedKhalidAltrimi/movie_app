import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../core/database/sqflite_database.dart';
import '../../../../core/tables/favorite_table.dart';
import '../../data/models/favorite_movie_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<FavoriteMovieModel> _favorites = [];

  List<FavoriteMovieModel> get favorites => _favorites;

  Future<void> loadFavorites() async {
    final db = SqfliteDatabase.db;
    final data = await db.query(FavoriteTable.tableName);

    _favorites.clear();
    _favorites.addAll(data.map((e) => FavoriteMovieModel.fromMap(e)));
    notifyListeners();
  }

  Future<void> addFavorite(FavoriteMovieModel movie) async {
    final db = SqfliteDatabase.db;
    await db.insert(FavoriteTable.tableName, movie.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    _favorites.add(movie);
    notifyListeners();
  }

  Future<void> removeFavorite(int movieId) async {
    final db = SqfliteDatabase.db;
    await db.delete(FavoriteTable.tableName,
        where: '${FavoriteTable.columnMovieId} = ?', whereArgs: [movieId]);
    _favorites.removeWhere((movie) => movie.movieId == movieId);
    notifyListeners();
  }

  bool isFavorite(int movieId) {
    return _favorites.any((movie) => movie.movieId == movieId);
  }
}
