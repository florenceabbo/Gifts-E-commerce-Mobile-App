import 'package:flutter/material.dart';
import 'package:flutter_application_3/categories_page.dart';

class Items extends StatelessWidget {
   Items({super.key});

  // Defined a list of image paths
  final List<String> imagePaths = [
    "assets/images/7457654aeea36c13b77fcda820172ede (1).gif",
    "assets/images/he.png",
    "assets/images/1-removebg-preview.png",
    "assets/images/3-removebg-preview.png",
    "assets/images/4-removebg-preview.png",
    "assets/images/5-removebg-preview.png",
    "assets/images/9-removebg-preview.png",
    "assets/images/4-removebg-preview.png",
    "assets/images/7457654aeea36c13b77fcda820172ede (1).gif",
    "assets/images/3-removebg-preview.png",
    "assets/images/he.png",
    "assets/images/3331-removebg-preview.png"
    // Adding more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Famous Gifts",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for (String imagePath in imagePaths)
              Container(
                height: 20,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Previous',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 135, 7)),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Text(
                            'To Categories',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 135, 7)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        child: Image.asset(
                          imagePath,
                          height: 100,
                          width: 150,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
