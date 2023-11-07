
import 'package:flutter/material.dart';
import 'package:flutter_application_3/list.dart';
// import 'package:carousel_pro/carousel_pro.dart';

class HomePage2 extends StatefulWidget {
  // final List<CategoryModel> categories = [
  //   CategoryModel(name: 'Category 1', imagePath: 'assets/images/category1.jpg'),
  //   CategoryModel(name: 'Category 2', imagePath: 'assets/images/category2.jpg'),
  //   // Add more categories here
  // ];
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //removed the new key word
        elevation: 0.1,
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
        title: const Text("My-E Shop"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}) //removed the new keyword
        ],
      ),
      drawer: Drawer(
        //removed new key word
        child: ListView(
          //removed new key word
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              //removed new key word
              accountName: const Text('Abbo Fulumera'),
              accountEmail: const Text('fulumera@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  //removed new key word
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  //removed new
                  color:Color.fromARGB(255, 255, 135, 7)),
            ),

            //body

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home, color: Color.fromARGB(255, 255, 135, 7),),
                )),

                InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("My Account"),
                  leading: Icon(Icons.person, color: Color.fromARGB(255, 255, 135, 7),),
                )),

                InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("My Orders"),
                  leading: Icon(Icons.shopping_basket, color: Color.fromARGB(255, 255, 135, 7),),
                )),

                InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Categories"),
                  leading: Icon(Icons.dashboard, color: Color.fromARGB(255, 255, 135, 7),),
                )),

                const Divider(),

                InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Color.fromARGB(255, 255, 135, 7),),
                )),

                InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Color.fromARGB(255, 255, 135, 7),),
                ))

          ],
        ),
      ),

      body: ListView(
        children:  const  <Widget>[
          //image carousel here
          //padding widget
          Padding(padding: EdgeInsets.all(8.0),
          child: Text("Categories"),),

          //horizontal list view
          HorizontalList(categories: [],),          

        ],
      ),
    );
  }
}

