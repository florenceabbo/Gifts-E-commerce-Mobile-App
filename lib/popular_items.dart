// import 'package:flutter/material.dart';

// class PopularItems extends StatelessWidget {
//   const PopularItems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Popular Gifts",
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 "See All",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               )
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               for (int i = 1; i < 9; i++)
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   padding: EdgeInsets.all(5),
//                   height: 100,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 6,
//                         ),
//                       ]),
//                   //   child: Image.network(
//                   child: Image.asset(
//                     "assets/images/edited_gifts-removebg-preview.png"),
//                   //       // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhgdYcj4DLxQUCU_7PRHn-n0PcGcZh-KPtandsGk0KG6XV7Ax_fj9w7uOb8f0jk-LCgSE&usqp=CAU"),
//                 ) // )
//             ],
//           ),
//         )
        
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "assets/images/edited_gifts-removebg-preview.png",
      "assets/images/he.png",
      "assets/images/1-removebg-preview.png",
      "assets/images/9-removebg-preview.png",
      "assets/images/3-removebg-preview.png",
      "assets/images/3331-removebg-preview.png"
      
      
      // Add more image paths here
    ];

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Gifts",
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
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (String imagePath in imagePaths)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Image.asset(imagePath),
                )
            ],
          ),
        )
      ],
    );
  }
}