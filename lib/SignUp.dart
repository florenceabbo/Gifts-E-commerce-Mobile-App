import 'package:flutter/material.dart';
import 'package:flutter_application_3/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to the SignUp page",
          style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 253, 252, 252)),
        ),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      backgroundColor: Color.fromARGB(255, 248, 227, 205),
      drawer: Container(
        width: 400,
        height: 500,
        color: Color.fromARGB(255, 255, 135, 7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Logo12.png", width: 120, height: 150,),
            Text(" SignUp", style: TextStyle(fontSize: 22, color: Colors.black),),
            TextField(
              decoration: InputDecoration(
                hintText: ("Enter your Surname"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ("Enter your Given Name"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ("Enter your Email"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ("Enter your password"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ("Confirm your password"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Now LogIn clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
              },
              child: Text("Now LogIn", style: TextStyle(color: Colors.black)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/login.dart';

// class SignUp extends StatelessWidget {
//   const SignUp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//                title: Text("Welcome to the SignUp page", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 253, 252, 252)),),
//                backgroundColor: Color.fromARGB(255, 255, 135, 7)
//       ),
//       backgroundColor: Color.fromARGB(255, 248, 227, 205),
//      drawer: Container(
//       width: 400,
//       height: 500,
//       color: Color.fromARGB(255, 255, 135, 7),
//      ),
        
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
       
//         children: [
//           // Image.asset("assets/images/vale.png", width:50 , height: 70,),
          
//           Text(" SignUp",style: TextStyle(fontSize: 22, color: Colors.black),),
       
//           TextField(
//             decoration: InputDecoration(
//               hintText: ("Enter your Surname")
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: ("Enter your Given Name")
//             ),
            
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: ("Enter your Email")
//             ),
            
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: ("Enter your password")
//             ),
            
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: ("Confirm your password")
//             ),
            
//           ),
          
          

//           ElevatedButton(
//   onPressed: () {
//     print("Now LogIn clicked");
//     Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
//   },
//   child: Text("Now LogIn", style: TextStyle(color: Colors.black)),
//   style: ButtonStyle(
//     backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)), // Change the color to your desired background color
//   ),
// ),
//           ],
//       ),
              
  

//     );
  
    
//   }
// }