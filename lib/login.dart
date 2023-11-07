import 'package:flutter/material.dart';
import 'package:flutter_application_3/SignUp.dart';

// void main(){
//   runApp(MaterialApp(),
//   ); 
// }
class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
               title: Text("Welcome to the Login page", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
               backgroundColor: Color.fromARGB(255, 255, 135, 7)
      ),
      
      backgroundColor: Color.fromARGB(255, 248, 227, 205),
     drawer: Container(
      width: 400,
      height: 500,
      color: Color.fromARGB(255, 255, 135, 7),
     ),
        
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        
       
        children: [
          Image.asset("assets/images/Logo12.png", width:80 , height: 100,),
          
          Text("LogIn",style: TextStyle(fontSize: 22, color: Color.fromARGB(0, 241, 122, 17)),),
          // Text("Enter Email", style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 230, 7)),),
          // Text("Enter Password", style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 230, 7)),),
          // Text("Don't have an account, SignUp", style: TextStyle( fontSize: 12, color: Color.fromARGB(255, 255, 230, 7)),),
          TextField(
            decoration: InputDecoration(
              hintText: ("Enter your Email")
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: ("Enter your Password")
            ),
          ),
          
         TextButton(onPressed: (){
          print("Forgot password clicked");
         }, child: Text("Forgot password?", style: TextStyle(color:Colors.black),)), 
         ElevatedButton(onPressed: (){
         print("LogIn clicked");
         }, child: Text("LogIn", style: TextStyle(color: Colors.black)),
         style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)), // Change the color to your desired background color
  )),
         TextButton(onPressed: (){
          print("Don't have an account clicked");
         }, child: Text("Don't have an account SignUp", style: TextStyle(color: Colors.black),)),
          ElevatedButton(
  onPressed: () {
    print("SignUp clicked");
  },
  child: Text("SignUp", style: TextStyle(color: Colors.black)),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 135, 7)), // Change the color to your desired background color
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
    MaterialPageRoute(builder: (context) =>  SignUp()),
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
              
  
//  floatingActionButton:FloatingActionButton(onPressed: null, 
//          child: const Text("SignUp", style: TextStyle(color: Colors.black),),
//          backgroundColor: const Color.fromARGB(255, 255, 238, 7),

//  ),
    );
  
    
  }
}