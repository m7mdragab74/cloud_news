import 'package:cloud_news/models/category_model.dart';
import 'package:cloud_news/views/category_view.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
