import 'package:flutter/material.dart';
// import 'package:flutter_application_3/SignUp.dart';
// import 'package:flutter_application_3/list.dart';
//  import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/splash.dart';
// imports the flutter package, material. The material is a flutter package to 
// create user interface according to the Material design guidelines specified by Android.
// This line imports the necessary Flutter package, material.dart, which is
//  used to build material design-based UIs in Flutter. 
//  It's a fundamental package for building Flutter apps

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home:SplashScreen(), 
          // const SignUp(),
    //  home:HomePage(), 
    
  ));
}

// class Trial extends StatelessWidget{
//    const Trial({super.key});
//    @override
//    Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("This is my App"),
//         backgroundColor: Colors.orange,
//         centerTitle: true,
//       ),
//       body: const Center(
//         child:Text("Lets Get Started", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),

//       ),
//        floatingActionButton:FloatingActionButton(onPressed: null,
//     child: const Text("Submit"),
//     backgroundColor: Color.fromARGB(255, 88, 1, 1),
//     ),
//     );
//    }
// }
// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: const Center(
//         child: Text("Home"),
//       ),
       
//     );
//   }
// }
//Here, we define the main function, which is the entry point 
// of a Dart application. In this function, we call the runApp 
// method and pass an instance of MyApp to it. This is how we start our Flutter application.

// class MyApp extends StatelessWidget {
//    // This widget is the root of your application.
//   //  This code defines a new class named MyApp, which extends StatelessWidget. In Flutter, everything 
//   //  is a widget, and MyApp is the root widget of our application
//    @override
//    Widget build(BuildContext context) {
//     // This is the build method, which is required in every widget that extends StatelessWidget. It returns the widget
//     //  hierarchy that represents the user interface of the app.
//       return MaterialApp(
//          title: 'Hello World Demo Application',
//          theme: ThemeData(
//             primarySwatch: Colors.blue,
//          ),
//          home: MyHomePage(title: 'Home page'),
//       );
//    }
// }
// class MyHomePage extends StatelessWidget {
//    MyHomePage({Key key, this.title}) : super(key: key);
//    final String title;

//    @override
//    Widget build(BuildContext context) {
//       return Scaffold(
//          appBar: AppBar(
//             title: Text(this.title),
//          ),
//          body: Center(
//             child:
//             Text(
//                'Hello World',
//             )
//          ),
//       );
//    }
 