import 'package:flutter/material.dart';
import 'package:movie_app/Features/Favorite/presentation/providers/favorite_provider.dart';
import 'package:movie_app/Features/Home/presentation/providers/home_movies_provider.dart';
import 'package:movie_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:movie_app/core/database/sqflite_database.dart';
import 'package:movie_app/core/routes/app_router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SqfliteDatabase.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeMoviesProvider()),
        ChangeNotifierProvider(
            create: (_) => FavoriteProvider()..loadFavorites()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().generateRoute,
        home: const SplashView(),
      ),
    );
  }
}
