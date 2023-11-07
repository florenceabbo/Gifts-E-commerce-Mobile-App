import 'package:flutter/material.dart';


class Items extends StatelessWidget {
  const Items({super.key});

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
            for (int i = 1; i < 9; i++)
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
                        // child: Image.asset(
                        //   "images/$i.jpg",
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children:<Widget>[
         // Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20))
         // ,
       
         ElevatedButton(onPressed: (){Navigator.pop(context);},
      
        child: Text('Previous',
        style: TextStyle(
         color: Colors.white,
        ),),
        style:ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),
        ),
         ),
  //       ElevatedButton(
         
  //              onPressed:()
  //             {
  //             Navigator.push(
  //    context,
  //    MaterialPageRoute(builder: (context) =>  PopularItems()),
  //  );

  //             },
  //             child: Text('Next',
  //             style: TextStyle(
           
        
  //              color: Colors.white
  //             ), ),
  //            style: ButtonStyle(
  //              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7))
  //             ),
                 
  //                 ),
   ],),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                          child: Image.asset(
                          "assets/images/7457654aeea36c13b77fcda820172ede (1).gif",
                          height: 500,
                          width: 700,
                        ),
                        alignment: Alignment.centerLeft,
                        // child: Text(
                        //   "Text title",
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.black,
                        //   ),
                          
                        // ),
                      ),
                    ),
  //                  Row(
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
  //   MaterialPageRoute(builder: (context) =>  PopularItems()),
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
                  
                ),
              ),
          ],
          
        )
        
      ],
      
    );
                  
  }
}