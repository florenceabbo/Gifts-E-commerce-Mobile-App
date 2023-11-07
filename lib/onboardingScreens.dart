// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // You can add your splash screen UI here
//     return Scaffold(
//       body: Center(
//         child: Text('Splash Screen'),
//       ),
//       backgroundColor: Colors.blue,
//     );
//   }
// }

// class OnboardingScreenOne extends StatelessWidget {
//   final List<OnboardingPage> pages = [
//     OnboardingPage(
//       title: 'Welcome to MyApp',
//       description: 'This is a simple onboarding screen example.',
//       imagePath: 'assets/onboarding1.png',
//     ),
//     OnboardingPage(
//       title: 'Feature 1',
//       description: 'Description of feature 1 goes here.',
//       imagePath: 'assets/onboarding2.png',
//     ),
//     OnboardingPage(
//       title: 'Feature 2',
//       description: 'Description of feature 2 goes here.',
//       imagePath: 'assets/onboarding3.png',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         itemCount: pages.length,
//         itemBuilder: (context, index) {
//           return pages[index];
//         },
//       ),
//     );
//   }
// }

// class OnboardingPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imagePath;

//   OnboardingPage({
//     required this.title,
//     required this.description,
//     required this.imagePath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Image.asset(imagePath),
//         SizedBox(height: 20),
//         Text(
//           title,
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 10),
//         Text(
//           description,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     );
//   }
// }