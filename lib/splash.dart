import 'package:flutter/material.dart';
 import 'dart:async';

import 'package:flutter_application_3/login.dart';



void main()=>
  runApp(MaterialApp(
    home: SplashScreen(),

    
    
  ));
  class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomeState();
}

class _HomeState extends State<SplashScreen> {
  
  //  This widget is the root of your application.


  
  @override
  Widget build(BuildContext context){
    Timer(
            Duration(seconds: 5),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => OnboardingScreen1()))); 
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 248, 227, 205),
    
      
      
        
      body: Column(
            

            // mainAxisAlignment: MainAxisAlignment.center,
            
                 children:<Widget>[ 
                  Center(),
             Image.asset('assets/images/Logo12.png',
          
           width: 300,
           height: 400,
           
      ),
               
               
              
                
              
          
           
          
            ],
                 
      
         ),
         
         
  
         )
         ;
      
        
        
      
      
  
    
  }}

  class OnboardingScreen1 extends StatelessWidget {
          const OnboardingScreen1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    appBar: AppBar(
      
      title: Text("LOVE BLOOSOMS GIFT STORE", style: TextStyle(color: Colors.black),),
      backgroundColor: Color.fromARGB(255, 255, 135, 7),
    ),
      backgroundColor:Color.fromARGB(255, 251, 223, 193),
      body:Center( 
        
         child:  Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget>[  
   
   
                Center(
                  
                
                     child: Padding(padding:EdgeInsets.fromLTRB(10, 30, 10, 10), 
                    child:Column(
                    
               children:<Widget>[
                               Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                               
       child:Image.asset('assets/images/delivery12.png', width: 100, height: 200,
 
      ),), 
          SizedBox(height: 20),
               Center(
                 child: Text(
                            "Welcome to Online Gift Store",textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                             
                             
                            ) ,
                          
                           ),
                           
                           
               ),
              //  SizedBox(height: 10),

                Center(
                 child: Text(
                            "Dealers in all kinds of gifts like chrismass gifts, valentine gifts......",textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                             color: Colors.black,
                             
                             
                            ) ,
                          
                           ),
               ),
              //  SizedBox(height: 20),
    
           ],),
            
    ),),
            // SizedBox(height: 50,),
         Center(
             child: TextButton(
         
              onPressed:()
             {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  OnboardingScreen2()),
  );

             },
             child: Text('Explore',
             style: TextStyle(
              fontSize: 16,
             
              color: Colors.black
             ), ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7))
             ),
                 
                 ),), ],
                 
               ),
         ),
         ),
      

         )
         ;
      
  }}

  class OnboardingScreen2 extends StatelessWidget {
    const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOVE BLOOSOMS STORE", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
    backgroundColor: Color.fromARGB(255, 253, 226, 197),
    
    body: SafeArea(child:
Center(
  
  child: Column(
    children: <Widget>[
      
      Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
      child:Image.asset('assets/images/delivery1.png',
             width: 90,
          height: 150,
      
      ),),
                  
                             Center(
                 child: Text(
                            'Make your Order',
                            textAlign: TextAlign.center, style:TextStyle(
                            
                             fontWeight: FontWeight.w800,
                             color: Colors.black,
                             fontSize: 20,
                             
                             
                             
                            ) ,
                          
                           ),
               ),
              //  SizedBox(height:10),
                  
                  Center(
                 child: Text(
                            'Delivery on your door Step',
                            textAlign: TextAlign.center, style:TextStyle(
                            // fontFamily: 'Makeup',
                             fontWeight: FontWeight.w400,
                             color:Colors.black,
                             fontSize: 16,
                             
                             
                             
                             
                            ) ,
                          
                           ),
               ),
              //  SizedBox(height:50),
                        
       
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget>[
        // Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20))
        // ,
       
        ElevatedButton(onPressed: (){Navigator.pop(context);},
      
       child: Text('Previous',
       style: TextStyle(
        color: Colors.black,
       ),),
       style:ButtonStyle(
       backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),
       ),
        ),
       ElevatedButton(
         
              onPressed:()
             {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  LogIn()),
  );

             },
             child: Text('Next',
             style: TextStyle(
           
        
              color: Colors.black
             ), ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7))
             ),
                 
                 ),],),
    ],
  ),
)
      
      ),  );
  }
}

 