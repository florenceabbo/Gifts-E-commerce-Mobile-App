import 'package:flutter/material.dart';
import 'package:flutter_application_3/categories_page.dart';

class CategoryInfo {
  final String imagePath;
  final String categoryName;

  CategoryInfo({required this.imagePath, required this.categoryName});
}

class Categories extends StatelessWidget {
  final List<CategoryInfo> categories = [
    CategoryInfo(imagePath: "assets/images/3331-removebg-preview.png", categoryName: "Material Gifts"),
    CategoryInfo(imagePath: "assets/images/5-removebg-preview.png", categoryName: "Wedding Gifts"),
    CategoryInfo(imagePath: "assets/images/7457654aeea36c13b77fcda820172ede (1).gif", categoryName: "Birthday Gifts"),
    CategoryInfo(imagePath: "assets/images/3-removebg-preview.png", categoryName: "Casual Gifts"),
    // Add more categories as needed
  ];

         Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Navigate to CategoriesPage when Categories is clicked
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesPage()),
                  );
                },
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Change the color as per your design
                  ),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (var category in categories)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 100, // Adjust the height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          category.imagePath,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          category.categoryName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}