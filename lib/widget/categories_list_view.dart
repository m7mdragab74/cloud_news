import 'package:cloud_news/models/category_model.dart';
import 'package:cloud_news/widget/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    const CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
    const CategoryModel(
        image: 'assets/entertainment.png', categoryName: 'Entertainment'),
    const CategoryModel(image: 'assets/general.png', categoryName: 'General'),
    const CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
    const CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
    const CategoryModel(image: 'assets/sports.png', categoryName: 'Sports'),
    const CategoryModel(
        image: 'assets/technology.jpeg', categoryName: 'Technology')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
