import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Features/Favorite/presentation/providers/favorite_provider.dart';
import 'Features/Home/presentation/providers/home_movies_provider.dart';
import 'Features/Splash/presentation/views/splash_view.dart';
import 'core/utils/app_routers.dart';
import 'core/database/sqflite_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SqfliteDatabase.initialize(); // تهيئة قاعدة البيانات

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
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        home: const SplashView(),
      ),
    );
  }
}
