import 'package:flutter/material.dart';
import 'package:movie_app/Features/Category/presentation/views/category_view.dart';
import 'package:movie_app/Features/Detail/presentation/views/movie_details_view.dart';
import 'package:movie_app/Features/Favorite/presentation/views/favorite_movies_view.dart';
import 'package:movie_app/Features/Home/presentation/views/home_view.dart';
import 'package:movie_app/Features/Search/presentation/views/search_view.dart';
import 'package:movie_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:movie_app/core/routes/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.categoryView:
        return MaterialPageRoute(builder: (_) => const CategoryView());
      case Routes.searchView:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case Routes.movieDetailsView:
        return MaterialPageRoute(builder: (_) => const MovieDetailsView());
      case Routes.favoriteMoviesView:
        return MaterialPageRoute(builder: (_) => const FavoriteMoviesView());

      default:
        return null;
    }
  }
}
