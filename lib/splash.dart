import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_3/login.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _HomeState();
}

class _HomeState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => OnboardingScreen1(),
      )),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 248, 227, 205),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.8, // Adjust as needed
                heightFactor: 0.8, // Adjust as needed
                child: Image.asset(
                  'assets/images/Logo12.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOVE BLOSSOMS GIFT STORE",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      backgroundColor: Color.fromARGB(255, 251, 223, 193),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 200, // Adjust the width as needed
                      height: 200, // Adjust the height as needed
                      child: Image.asset(
                        'assets/images/delivery12.png',
                        fit: BoxFit.contain, // Ensure the image fits within the container
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Welcome to Online Gift Store",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Dealers in all kinds of gifts like Christmas gifts, valentine gifts...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                  );
                },
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOVE BLOOSOMS STORE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      backgroundColor: Color.fromARGB(255, 253, 226, 197),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/images/delivery1.png',
                  width: 200, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Make your Order',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Delivery on your door Step',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 50),
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
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 