import 'package:flutter/material.dart';
import '../../../data/models/category_model.dart';
import '../category_view.dart';

class CategoryButton extends StatelessWidget {
  final CategoryModel category;

  const CategoryButton({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            CategoryView.id,
            arguments: {
              'genreId': category.genreId,
              'title': category.title,
            },
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        child: Text(category.title),
      ),
    );
  }
}
