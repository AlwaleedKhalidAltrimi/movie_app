import 'package:flutter/material.dart';
import '../../Features/Category/presentation/views/category_view.dart';
import '../../Features/Detail/presentation/views/movie_details_view.dart';
import '../../Features/Favorite/presentation/views/favorite_movies_view.dart';
import '../../Features/Home/presentation/views/home_view.dart';
import '../../Features/Search/presentation/views/search_view.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashView.id: (context) => const SplashView(),
    HomeView.id: (context) => const HomeView(),
    CategoryView.id: (context) => const CategoryView(),
    SearchView.id: (context) => const SearchView(),
    MovieDetailsView.id: (context) => const MovieDetailsView(),
    FavoriteMoviesView.id: (context) => const FavoriteMoviesView(),
  };
}
