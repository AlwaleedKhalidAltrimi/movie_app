import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:provider/provider.dart';
import '../../../../Home/presentation/providers/home_movies_provider.dart';
import '../../../../Home/presentation/views/home_view.dart';
import 'fade_scale_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeScaleAnimation;

  @override
  void initState() {
    super.initState();

    initFadeScaleAnimation();
    navigateToHome();
    Future.delayed(Duration.zero, () {
      final homeProvider =
          Provider.of<HomeMoviesProvider>(context, listen: false);
      homeProvider.fetchNowShowingMovies();
      homeProvider.fetchUpComingApiMovies();
      homeProvider.fetchPopularMovies();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initFadeScaleAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    fadeScaleAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, HomeView.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeScaleTransition(
      animation: fadeScaleAnimation,
      child: const Center(
        child: FadeScaleText(),
      ),
    );
  }
}
