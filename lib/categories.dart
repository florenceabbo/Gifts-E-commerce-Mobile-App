import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 25,
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
              )
            ],
          ),
        ),
        SingleChildScrollView(
          // 50 rows
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
// padding
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
  //       Row(
  //      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children:<Widget>[
  //       // Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20))
  //       // ,
       
  //       ElevatedButton(onPressed: (){Navigator.pop(context);},
      
  //      child: Text('Previous',
  //      style: TextStyle(
  //       color: Colors.white,
  //      ),),
  //      style:ButtonStyle(
  //      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),
  //      ),
  //       ),
  //      ElevatedButton(
         
  //             onPressed:()
  //            {
  //            Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) =>  Items()),
  // );

  //            },
  //            child: Text('Next',
  //            style: TextStyle(
           
        
  //             color: Colors.white
  //            ), ),
  //           style: ButtonStyle(
  //             backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7))
  //            ),
                 
  //                ),],),
      ],
      
    );
    
  }
}

