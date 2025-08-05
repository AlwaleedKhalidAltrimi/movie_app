import 'package:flutter/material.dart';
import '../../../data/models/category_model.dart';
import 'category_button.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoriesListView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryButton(category: category);
        },
      ),
    );
  }
}
