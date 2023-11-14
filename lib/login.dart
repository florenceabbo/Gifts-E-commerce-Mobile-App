import 'package:flutter/material.dart';
import 'package:flutter_application_3/SignUp.dart';
import 'package:flutter_application_3/home.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to the Login page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      backgroundColor: Color.fromARGB(255, 248, 227, 205),
      drawer: Container(
        width: 400,
        height: 500,
        color: Color.fromARGB(255, 255, 135, 7),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/Logo12.png", width: 80, height: 100,),
          Text(
            "LogIn",
            style: TextStyle(fontSize: 22, color: Color.fromARGB(0, 241, 122, 17)),
          ),
          TextField(
            decoration: InputDecoration(hintText: ("Enter your Email")),
          ),
          TextField(
            decoration: InputDecoration(hintText: ("Enter your Password")),
          ),
          TextButton(
            onPressed: () {
              print("Forgot password clicked");
            },
            child: Text("Forgot password?", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {
              print("LogIn clicked");
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              // Navigate to the next page after successful login

            },
            child: Text("LogIn", style: TextStyle(color: Colors.black)),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)),
            ),
          ),
          TextButton(
            onPressed: () {
              print("Don't have an account clicked");
            },
            child: Text("Don't have an account SignUp", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {
              print("SignUp clicked");
              // Navigate to the SignUp page
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Text("SignUp", style: TextStyle(color: Colors.black)),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)),
            ),
          ),
        ],
      ),
    );
  }
}
