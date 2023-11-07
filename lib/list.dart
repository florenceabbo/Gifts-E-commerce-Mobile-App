import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String imagePath;

  CategoryModel({required this.name, required this.imagePath});
}

class HorizontalList extends StatelessWidget {
  final List<CategoryModel> categories;

  const HorizontalList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(categories[index].imagePath),
                  // onError: (exception, stackTrace) {
                  //   print('Failed to load image: $exception');
                  // },
                ),
                const SizedBox(height: 8),
                Text(categories[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}


