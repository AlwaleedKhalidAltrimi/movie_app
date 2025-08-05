import 'package:flutter/material.dart';
import 'widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  static const String id = 'CategoryView';

  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final int genreId = args['genreId'];
    final String title = args['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CategoryViewBody(genreId: genreId),
    );
  }
}
