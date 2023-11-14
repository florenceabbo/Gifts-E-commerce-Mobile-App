import 'package:flutter/material.dart';
import 'package:flutter_application_3/categories_page.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});

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
              for (int i = 1; i < 30; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 50,
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
                          "assets/images/3331-removebg-preview.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Material Gifts",
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
