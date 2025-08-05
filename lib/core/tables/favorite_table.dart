class FavoriteTable {
  static const String tableName = 'favorites';

  static const String columnMovieId = 'movieId';
  static const String columnTitle = 'title';
  static const String columnPosterPath = 'posterPath';
  static const String columnVoteAverage = 'voteAverage';
  static const String columnVoteCount = 'voteCount';
  static const String columnReleaseDate = 'releaseDate';
  static const String columnLanguage = 'language';
  static const String columnOverview = 'overview';
  static const String create = '''
    CREATE TABLE $tableName (
      $columnMovieId INTEGER PRIMARY KEY,
      $columnTitle TEXT,
      $columnPosterPath TEXT,
      $columnVoteAverage REAL,
      $columnVoteCount INTEGER,
      $columnReleaseDate TEXT,
      $columnLanguage TEXT,
      $columnOverview TEXT
    )
  ''';
}
